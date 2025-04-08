// ignore_for_file: void_checks

import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';
import 'package:zamaan/features/auth/data/sources/remote/remote_auth_data_source.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/presentation/constants/auth_texts.dart';

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

  /// Method to get the current user
  ///
  /// This method fetches the current user's data from the 'profiles' table.
  /// If the user is not signed in, it throws a RemoteException.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> getCurrentUser() async => tryCatchEither<UserSupabaseModel>(
        action: () async {
          if (currentUserSession != null) {
            // Fetch user data from the 'profiles' table
            final userData = await _supabaseClient
                .from('profiles')
                .select()
                .eq('id', currentUserSession!.user.id)
                .single();
            // Return the user data as a RemoteUserModel
            return Right(
              UserSupabaseModel.fromJson(userData)
                  .copyWith(emailAddress: currentUserSession!.user.email!),
            );
          }

          // Throw an exception if the user is not signed in
          throw RemoteException(
            message: AuthTexts.errors.userNotSignedIn,
            statusCode: '401',
          );
        },
        failureType: FailureType.remote,
      );

  /// Method to sign in a user
  ///
  /// This method signs in a user with the provided email and password.
  ///
  /// - Parameters:
  ///   - params: The `UserSignInParams` containing the user's email and password.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> signIn(UserSignInParams params) async => _getUser(
        () async => _auth.signInWithPassword(
          password: params.password,
          email: params.email,
        ),
      );

  /// Method to sign up a new user
  ///
  /// This method signs up a new user with the provided user model.
  ///
  /// - Parameters:
  ///   - userModel: The `RemoteUserModel` containing the user's information.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> signUp(UserSupabaseModel userModel) async => _getUser(
        () async => _auth.signUp(
          password: userModel.password,
          email: userModel.emailAddress,
          data: userModel.toJson(),
        ),
      );

  /// Method to sign out the current user
  ///
  /// This method signs out the current user.
  ///
  /// - Returns: A `ResultFuture` containing `true` if successful, or an error.
  @override
  EResultFuture<bool> signOut() async => tryCatchEither(
        action: () async {
          await _auth.signOut();
          return const Right(true);
        },
        failureType: FailureType.remote,
      );

  /// Method to update the current user's information
  ///
  /// This method updates the current user's information with the provided entity.
  ///
  /// - Parameters:
  ///   - entity: The `RemoteUserModel` containing the updated user information.
  ///
  /// - Returns: A `ResultFuture` containing the `RemoteUserModel` or an error.
  @override
  EResultFuture<UserSupabaseModel> updateUser(UserSupabaseModel entity) async =>
      tryCatchEither<UserSupabaseModel>(
        action: () async {
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
            UserSupabaseModel.fromJson(result.user!.toJson()),
          );
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid changePassword(ChangePasswordParams params) async => tryCatchEither(
        action: () async {
          // Verify the user's credentials by signing in with the provided email and password
          await signIn(params);

          // Reset the user's password
          await _auth.updateUser(UserAttributes(password: params.newPassword));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  // TODO: Improve this method to handle different scenarios and remove hardcoded values.
  // - Validate the email format before making the request.
  // - Handle cases where the user does not exist.
  // - Use a secure method to generate a new password instead of hardcoding it.
  // - Ensure proper error handling and logging.
  @override
  EResultFutureVoid resetPassword(String email) async => tryCatchEither(
        action: () async {
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
        },
        failureType: FailureType.remote,
      );

  /// Method to delete the current user's account
  ///
  /// This method deletes the current user's account.
  ///
  /// - Returns: A `ResultFuture` containing `true` if successful, or an error.
  @override
  EResultFuture<bool> deleteUserAccount(UserSignInParams params) => tryCatchEither<bool>(
        action: () async {
          //TODO.FIXME: Implement this method to handle delete user account properly.

          // Sign in the user with the provided email and password to verify their credentials
          await signIn(params);

          // Sign in the user with the provided email and password
          final user = foldEither(await signIn(params));

          // Remove the user from the 'profiles' table
          await _supabaseClient.from('profiles').delete().eq('id', user.id!);

          return const Right(true);
        },
        failureType: FailureType.remote,
      );

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
  ) async =>
      tryCatchEither<UserSupabaseModel>(
        action: () async {
          // Execute the provided function and return the user data
          final response = await fn();

          final user = response.user!.toJson();
          log(user.toString());

          return Right(
            UserSupabaseModel.fromJson(response.user!.toJson()),
          );
        },
        failureType: FailureType.remote,
      );
}
