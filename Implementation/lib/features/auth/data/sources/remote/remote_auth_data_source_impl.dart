import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';
import 'package:zamaan/features/auth/data/sources/remote/remote_auth_data_source.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';

/// Implementation of the RemoteAuthDataSource interface
///
/// This class provides methods to interact with the remote authentication
/// service using Supabase. It handles user authentication, user data retrieval,
/// and user account management.
class RemoteAuthDataSourceImpl extends RemoteAuthDataSource {
  /// Constructor to initialize the connection checker and Supabase client
  ///
  /// - Parameters:
  ///   - supabaseClient: An instance of `SupabaseClient` to interact with the Supabase service.
  RemoteAuthDataSourceImpl(
    SupabaseClient supabaseClient,
  ) : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  // Getter for the authentication client
  GoTrueClient get _auth => _supabaseClient.auth;

  // Getter for the current user session
  @override
  Session? get currentUserSession => _auth.currentSession;

  @override
  EResultFutureVoid restoreSession() async {
    try {
      final session = currentUserSession;
      if (session != null &&
          DateTime.fromMillisecondsSinceEpoch(session.expiresAt! * 1000).isAfter(DateTime.now())) {
        await setSession();
      }
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<AuthResponse> setSession() async =>
      Right(await _auth.setSession(currentUserSession!.refreshToken!));

  /// Method to get the current user
  ///
  /// This method getes the current user's data from the 'profiles' table.
  /// If the user is not signed in, it throws a RemoteException.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> getCurrentUser() async {
    try {
      if (currentUserSession != null) {
        // Get user data from the 'profiles' table
        final userData = await _supabaseClient
            .from('profiles')
            .select()
            .eq('id', currentUserSession!.user.id)
            .single();
        // Return the user data as a RemoteUserModel
        return Right(
          UserSupabaseModel.fromJson(userData)
              .copyWith(emailAddress: currentUserSession!.user.email),
        );
      }
      throw Exception('No User');
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserSupabaseModel>(e: e, stackTrace: stackTrace);
    }
  }

  /// Method to sign in a user
  ///
  /// This method signs in a user with the provided email and password.
  ///
  /// - Parameters:
  ///   - params: The `UserSignInParams` containing the user's email and password.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> signIn(UserSignInParams params) async {
    try {
      return _getUser(
        () async => _auth.signInWithPassword(
          password: params.password,
          email: params.email,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserSupabaseModel>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Method to sign up a new user
  ///
  /// This method signs up a new user with the provided user model.
  ///
  /// - Parameters:
  ///   - userModel: The `RemoteUserModel` containing the user's information.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> signUp(UserSupabaseModel userModel) async {
    try {
      return _getUser(
        () async => _auth.signUp(
          password: userModel.password!,
          email: userModel.emailAddress,
          data: userModel.toJson(),
        ),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserSupabaseModel>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Method to sign out the current user
  ///
  /// This method signs out the current user.
  ///
  /// - Returns: A `ResultFuture` containing `true` if successful, or an error.
  @override
  EResultFuture<bool> signOut() async {
    try {
      await _auth.signOut();
      return const Right(true);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<bool>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Method to update the current user's information
  ///
  /// This method updates the current user's information with the provided entity.
  ///
  /// - Parameters:
  ///   - entity: The `RemoteUserModel` containing the updated user information.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> updateUser(UserSupabaseModel entity) async {
    try {
      // Update the user's information
      final result = await _auth.updateUser(
        UserAttributes(
          data: entity.toJson(),
          email: entity.emailAddress,
          password: entity.password,
        ),
      );

      // Return the updated user data as a RemoteUserModel
      return Right(
        UserSupabaseModel.fromJsonUserAccount(result.user!.userMetadata!),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserSupabaseModel>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid changePassword(ChangePasswordParams params) async {
    try {
      // Verify the user's credentials by signing in with the provided email and password
      await signIn(params);

      // Reset the user's password
      await _auth.updateUser(UserAttributes(password: params.newPassword));
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  // TODO[FIXME]: mprove this method to handle different scenarios and remove hardcoded values.
  // - Validate the email format before making the request.
  // - Handle cases where the user does not exist.
  // - Use a secure method to generate a new password instead of hardcoding it.
  // - Ensure proper error handling and logging.
  @override
  EResultFutureVoid resetPassword(String email) async {
    try {
      final response =
          await _supabaseClient.from('profiles').select('id').eq('user_name', 'moien').single();

      log(response['id'] as String);

      log(_auth.currentUser!.role!);
      // Reset the user's password
      await _auth.admin.updateUserById(
        response['id'] as String,
        attributes: AdminUserAttributes(password: 'Aa@123456'),
      );

      await _auth.signOut();

      return const Right(null);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Method to delete the current user's account
  ///
  /// This method deletes the current user's account.
  ///
  /// - Returns: A `ResultFuture` containing `true` if successful, or an error.
  //TODO[FIXME]: Implement this method to handle delete user account properly.
  @override
  EResultFuture<bool> deleteUserAccount(UserSignInParams params) async {
    try {
      // Sign in the user with the provided email and password to verify their credentials
      await signIn(params);

      // Sign in the user with the provided email and password
      final user = foldEitherRight<UserSupabaseModel>(await signIn(params));

      // Remove the user from the 'profiles' table
      await _supabaseClient.from('profiles').delete().eq('id', user.id);

      return const Right(true);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<bool>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Private method to handle user-related actions
  ///
  /// This method executes the provided function and returns the user data.
  ///
  /// - Parameters:
  ///   - fn: The function to execute.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  EResultFuture<UserSupabaseModel> _getUser(
    Future<AuthResponse> Function() fn,
  ) async {
    try {
      // Execute the provided function and return the user data
      final response = await fn();

      final user = response.user!;
      log(user.toString());

      return Right(
        UserSupabaseModel.fromJson(response.user!.userMetadata!),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserSupabaseModel>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<Session?> listenAuthChanges() async {
    try {
      final completer = Completer<Session?>();
      late final StreamSubscription sub;
      sub = _auth.onAuthStateChange.listen((event) {
        if (!completer.isCompleted) {
          completer.complete(event.session);
          sub.cancel();
        }
      });
      final session = await completer.future;
      return Right(session);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<Session?>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }
}
