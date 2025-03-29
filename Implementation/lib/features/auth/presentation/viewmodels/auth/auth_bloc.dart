import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/cubits/user/app_user_cubit.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user_entity.dart';
import 'package:zamaan/domain/network/connection_checker.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/current_user_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:zamaan/features/auth/domain/usecases/sign_up_usecase.dart';
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
  ///   - signUpUsecase: The use case for signing up a user.
  ///   - signInUsecase: The use case for signing in a user.
  ///   - currentUserUsecase: The use case for getting the current user.
  ///   - signOutUsecase: The use case for signing out a user.
  ///   - appUserCubit: The cubit for managing the app user's state.
  AuthBloc({
    required SignUpUsecase signUpUsecase,
    required SignInUsecase signInUsecase,
    required CurrentUserUsecase currentUserUsecase,
    required SignOutUsecase signOutUsecase,
    required ChangePasswordUsecase changePasswordUseCase,
    required ResetPasswordUsecase resetPasswordUsecase,
    required DeleteAccountUsecase deleteAccountUsecase,
    required AppUserCubit appUserCubit,
    required NetworkConnectivityMonitor connectionChecker,
  })  : _signUpUsecase = signUpUsecase,
        _signInUsecase = signInUsecase,
        _deleteAccountUsecase = deleteAccountUsecase,
        _currentUserUsecase = currentUserUsecase,
        _signOutUsecase = signOutUsecase,
        _changePasswordUseCase = changePasswordUseCase,
        _resetPasswordUsecase = resetPasswordUsecase,
        _appUserCubit = appUserCubit,
        _connectionChecker = connectionChecker,
        super(AuthInitialState()) {
    on<AuthEvent>(
      (event, emit) =>
          event is! AuthSignOutEvent ? emit(AuthLoadingState()) : null,
    );

    on<AuthIsUserSignedInEvent>(_isUserSignedIn);
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
  final SignUpUsecase _signUpUsecase;
  final SignInUsecase _signInUsecase;
  final DeleteAccountUsecase _deleteAccountUsecase;
  final CurrentUserUsecase _currentUserUsecase;
  final SignOutUsecase _signOutUsecase;
  final ChangePasswordUsecase _changePasswordUseCase;
  final ResetPasswordUsecase _resetPasswordUsecase;
  final AppUserCubit _appUserCubit;
  final NetworkConnectivityMonitor _connectionChecker;

  // Checks if a user is signed in.
  FutureVoid _isUserSignedIn(
    AuthIsUserSignedInEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _currentUserUsecase();
    result.fold(
      (failure) => emit(
        AuthFailureState(
          message: failure.toString(),
        ),
      ), // Emit failure state if user is not signed in
      (user) => _emitAuthSuccess(
        user: user,
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
          message: AuthTexts.errors
              .passwordMismatch, // Emit failure state if passwords do not match
        ),
      );
    }
    final response = await _signUpUsecase(event.user);
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
    final response = await _signInUsecase(event.params);
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
    final response = await _signOutUsecase();
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
    final response = await _resetPasswordUsecase(event.email);
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
    final response = await _deleteAccountUsecase(event.params);
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
