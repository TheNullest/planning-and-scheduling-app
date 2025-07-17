import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/cubits/user/app_user_cubit.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/network/connection_checker.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/useCases/change_password_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/delete_account_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/initialize_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/reset_password_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/sign_in_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/sign_out_use_case.dart';
import 'package:zamaan/features/auth/domain/useCases/sign_up_use_case.dart';
import 'package:zamaan/features/auth/presentation/constants/auth_texts.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// Bloc for handling authentication-related events and states.
///
/// This class extends `Bloc` and manages the authentication flow, including
/// signing up, signing in, checking if a user is signed in, and signing out.
/// It interacts with use cases and the `AppUserCubit` to perform these actions.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// Constructor to initialize the use cases and the AppUserCubit.
  ///
  /// - Parameters:
  ///   - signUpUseCase: The use case for signing up a user.
  ///   - signInUseCase: The use case for signing in a user.
  ///   - currentUserUseCase: The use case for getting the current user.
  ///   - signOutUseCase: The use case for signing out a user.
  ///   - appUserCubit: The cubit for managing the app user's state.
  AuthBloc({
    required AuthInitializeUseCase authInitializeUseCase,
    required SignUpUseCase signUpUseCase,
    required SignInUseCase signInUseCase,
    required SignOutUseCase signOutUseCase,
    required ChangePasswordUseCase changePasswordUseCase,
    required ResetPasswordUseCase resetPasswordUseCase,
    required DeleteAccountUseCase deleteAccountUseCase,
    required AppUserCubit appUserCubit,
    required NetworkConnectivityMonitor connectionChecker,
  })  : _authInitializeUseCase = authInitializeUseCase,
        _signUpUseCase = signUpUseCase,
        _signInUseCase = signInUseCase,
        _deleteAccountUseCase = deleteAccountUseCase,
        _signOutUseCase = signOutUseCase,
        _changePasswordUseCase = changePasswordUseCase,
        _resetPasswordUseCase = resetPasswordUseCase,
        _appUserCubit = appUserCubit,
        _connectionChecker = connectionChecker,
        super(AuthInitialState()) {
    on<AuthEvent>(
      (event, emit) => event is! AuthSignOutEvent ? emit(AuthLoadingState()) : null,
    );

    on<AuthInitializeEvent>(_isUserSignedIn);
    on<AuthSignUpEvent>(_onAuthSignUp);
    on<AuthSignInEvent>(_onAuthSignIn);
    on<AuthSignOutEvent>(_onAuthSignOut);
    on<AuthChangePasswordEvent>(_onChangePassword);
    on<AuthResetPasswordEvent>(_onResetPassword);
    on<AuthDeleteAccountEvent>(_onDeleteAccount);

    _appUserCubit.stream.listen((state) {
      if (state is AppUserSignedOutState) {
        add(AuthSignOutEvent(state));
      }
    });
  }

  // Private fields for the use cases and the AppUserCubit
  final AuthInitializeUseCase _authInitializeUseCase;
  final SignUpUseCase _signUpUseCase;
  final SignInUseCase _signInUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final SignOutUseCase _signOutUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  final AppUserCubit _appUserCubit;
  final NetworkConnectivityMonitor _connectionChecker;

  // Checks if a user is signed in.
  FutureVoid _isUserSignedIn(
    AuthInitializeEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _authInitializeUseCase();
    result.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if user is not signed in
      (user) => _emitAuthSuccess(
        user: user!,
        emit: emit,
      ), // Emit success state if user is signed in
    );
    return;
  }

  // Handles user sign-up.
  FutureVoid _onAuthSignUp(
    AuthSignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (event.confirmPassword.compareTo(event.user.password) != 0) {
      emit(
        AuthFailureState(
          message:
              AuthTexts.errors.passwordMismatch, // Emit failure state if passwords do not match
        ),
      );
    }
    final response = await _signUpUseCase(event.user);
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-up fails
      (user) => _emitAuthSuccess(
        user: user,
        emit: emit,
      ), // Emit success state if sign-up is successful
    );
    return;
  }

  // Handles user sign-in.
  FutureVoid _onAuthSignIn(
    AuthSignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await _signInUseCase(event.params);
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-in fails
      (user) => _emitAuthSuccess(
        user: user,
        emit: emit,
      ), // Emit success state if sign-in is successful
    );
    return;
  }

  // Handles user sign-out.
  FutureVoid _onAuthSignOut(
    AuthSignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await _signOutUseCase();
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-out fails
      (_) {
        emit(
          AuthUserSignedOutState(),
        ); // Emit signed-out state if sign-out is successful
        navigatorPushRemoveUntil(
          event.state.context,
          AppRouteConfigs.signIn.route,
        ); // Navigate to sign-in route
      },
    );
    return;
  }

  FutureVoid _onChangePassword(
    AuthChangePasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await _changePasswordUseCase(event.params);
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-out fails
      (_) {
        emit(
          AuthUserPasswordSuccessState(),
        ); // Emit user password changed state if password change is successful
      },
    );
    return;
  }

  FutureVoid _onResetPassword(
    AuthResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await _resetPasswordUseCase(event.email);
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-out fails
      (_) {
        emit(
          AuthUserPasswordSuccessState(),
        ); // Emit user password reset state if password reset is successful
      },
    );
    return;
  }

  // Handles user delete account.
  FutureVoid _onDeleteAccount(
    AuthDeleteAccountEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await _deleteAccountUseCase(event.params);
    response.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if sign-out fails
      (result) {
        emit(AuthUserAccountDeletedState());
      },
    );
    return;
  }

  // Emits the `AuthSuccessState` with the provided user.
  void _emitAuthSuccess({
    required UserEntity user,
    required Emitter<AuthState> emit,
  }) {
    log(user.toString());
    _appUserCubit.updateUser(user); // Update the AppUserCubit with the new user

    emit(
      AuthSuccessState(user),
    ); // Emit success state with the authenticated user
  }
}
