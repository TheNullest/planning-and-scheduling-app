import 'package:dartz/dartz.dart';
import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user_entity.dart';
import 'package:zamaan/domain/network/connection_checker.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';
import 'package:zamaan/features/auth/data/sources/local/local_auth_data_source.dart';
import 'package:zamaan/features/auth/data/sources/remote/remote_auth_data_source.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required RemoteAuthDataSource remoteDataSource,
    required LocalAuthDataSource localDataSource,
    required NetworkConnectivityMonitor connectionChecker,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _connectionChecker = connectionChecker;

  final RemoteAuthDataSource _remoteDataSource;
  final LocalAuthDataSource _localDataSource;
  final NetworkConnectivityMonitor _connectionChecker;

  @override
  EResultFuture<UserEntity> getCurrentUser() async => tryCatchEither<UserEntity>(
        action: () async => _executeBasedOnConnection<UserEntity>(
          onConnectedAction: () async {
            final result = await _remoteDataSource.getCurrentUser();
            return Right(foldEither<UserEntity>(result).toEntity());
          },
          onNotConnectedAction: () async => _localDataSource.getCurrentUser(),
        ),
      );

  @override
  EResultFuture<UserEntity> signIn(UserSignInParams params) async => tryCatchEither(
        action: () async => _executeBasedOnConnection<UserEntity>(
          onConnectedAction: () async {
            final result = await _remoteDataSource.signIn(params);
            final userEntity = foldEither<UserSupabaseModel>(result).toEntity();
            await _localDataSource.storeCurrentUser(
              UserHiveModel.fromEntity(userEntity),
            );

            return Right(userEntity);
          },
          onNotConnectedAction: () => _throwNoConnectionException('signIn'),
        ),
      );

  @override
  EResultFutureVoid signOut() async => tryCatchEither(
        action: () async => _executeBasedOnConnection<void>(
          onConnectedAction: () async {
            await _remoteDataSource.signOut();
            await _localDataSource.signOut();
            return const Right(null);
          },
          onNotConnectedAction: () async => _localDataSource.signOut(),
        ),
      );

  @override
  EResultFuture<UserEntity> signUp(UserEntity user) async => tryCatchEither(
        action: () async => _executeBasedOnConnection<UserEntity>(
          onConnectedAction: () async {
            final result = await _remoteDataSource.signUp(UserSupabaseModel.fromEntity(user));
            final userEntity = foldEither<UserSupabaseModel>(result).toEntity().toEntity();
            await _localDataSource.storeCurrentUser(
              UserHiveModel.fromRemote(
                foldEither<UserSupabaseModel>(result),
              ),
            );
            return Right(userEntity);
          },
          onNotConnectedAction: () => _throwNoConnectionException('signUp'),
        ),
      );

  @override
  EResultFuture<bool> deleteUserAccount(UserSignInParams params) async => tryCatchEither(
        action: () async => _executeBasedOnConnection<bool>(
          onConnectedAction: () async {
            final result = await _remoteDataSource.deleteUserAccount(params);

            return Right(foldEither(result));
          },
          onNotConnectedAction: () => _throwNoConnectionException('signUp'),
        ),
      );

  @override
  EResultFuture<UserEntity> update(UserEntity user) async => tryCatchEither(
        action: () async => _executeBasedOnConnection<UserEntity>(
          onConnectedAction: () async {
            final result = await _remoteDataSource.updateUser(
              UserSupabaseModel.fromEntity(user),
            );
            final userEntity = foldEither<UserSupabaseModel>(result).toEntity().toEntity();
            await _localDataSource.storeCurrentUser(
              UserHiveModel.fromRemote(
                foldEither<UserSupabaseModel>(result),
              ),
            );
            return Right(userEntity);
          },
          onNotConnectedAction: () => _throwNoConnectionException('update'),
        ),
      );

  @override
  EResultFutureVoid changePassword(ChangePasswordParams params) async => tryCatchEither<void>(
        action: () async => _executeBasedOnConnection<void>(
          onConnectedAction: () async {
            await _remoteDataSource.changePassword(params);
            return const Right(null);
          },
          onNotConnectedAction: () => _throwNoConnectionException('update'),
        ),
      );

  @override
  EResultFutureVoid resetPassword(String email) async => tryCatchEither<void>(
        action: () async => _executeBasedOnConnection<void>(
          onConnectedAction: () async => _remoteDataSource.resetPassword(email),
          onNotConnectedAction: () => _throwNoConnectionException('update'),
        ),
      );

  EResultFuture<T> _executeBasedOnConnection<T>({
    required EResultFuture<T> Function() onConnectedAction,
    required EResultFuture<T> Function() onNotConnectedAction,
  }) async {
    // TODO: improve this method for displaying an appropriate message when not connected to the internet and no exception is thrown
    final isConnected = await _connectionChecker.isConnected;
    if (isConnected) {
      return onConnectedAction();
    }
    return onNotConnectedAction();
  }

  Never _throwNoConnectionException(String location) => throw RemoteException(
        message: 'No internet connection!',
      );
}
