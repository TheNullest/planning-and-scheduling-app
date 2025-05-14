import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/network/connection_checker.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
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
    required DataMapper<UserEntity, UserHiveModel, UserSupabaseModel> mapper,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _connectionChecker = connectionChecker,
        _mapper = mapper;

  final RemoteAuthDataSource _remoteDataSource;
  final LocalAuthDataSource _localDataSource;
  final NetworkConnectivityMonitor _connectionChecker;

  final DataMapper<UserEntity, UserHiveModel, UserSupabaseModel> _mapper;

  @override
  EResultFuture<UserEntity?> initialize() async {
    try {
      await _remoteDataSource.restoreSession();
      final response = await _remoteDataSource.listenAuthChanges();
      final session = foldEitherRight<Session?>(response);
      final userResponse = await getCurrentUser();

      if (session != null) {
        final userEntity =
            foldEitherRight<UserEntity>(userResponse).copyWith(emailAddress: session.user.email);
        await _localDataSource.updateSession(_toRemoteSession(session));
        await _localDataSource.updateUser(_mapper.toHiveModel(userEntity));

        return Right(userEntity);
      } else {
        await _localDataSource.signOut();
        return const Right(null);
      }
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity?>(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<UserEntity> getCurrentUser() async {
    try {
      return _executeBasedOnConnection<UserEntity>(
        onConnectedAction: () async {
          final result = await _remoteDataSource.getCurrentUser();
          return Right(_mapper.toEntityFromSupabaseFoldEither(result));
        },
        onNotConnectedAction: () async {
          final user = await _localDataSource.getUser();
          return Right(_mapper.toEntityFromHiveFoldEither(user));
        },
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<UserEntity> signIn(UserSignInParams params) async {
    try {
      return _executeBasedOnConnection<UserEntity>(
        onConnectedAction: () async {
          final result = await _remoteDataSource.signIn(params);
          final userEntity = _mapper.toEntityFromSupabaseFoldEither(result);
          await _storeCurrentSession(_toRemoteSession());

          return Right(userEntity);
        },
        onNotConnectedAction: () => _throwNoConnectionException('signIn'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid signOut() async {
    try {
      return _executeBasedOnConnection<void>(
        onConnectedAction: () async {
          await _remoteDataSource.signOut();
          await _localDataSource.signOut();
          return const Right(null);
        },
        onNotConnectedAction: () async => _localDataSource.signOut(),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<UserEntity> signUp(UserEntity user) async {
    try {
      return _executeBasedOnConnection<UserEntity>(
        onConnectedAction: () async {
          final result = await _remoteDataSource.signUp(UserSupabaseModel.fromEntity(user));
          final userEntity = _mapper.toEntityFromSupabaseFoldEither(result);
          await _storeCurrentSession(_toRemoteSession());
          return Right(userEntity);
        },
        onNotConnectedAction: () => _throwNoConnectionException('signUp'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<bool> deleteUserAccount(UserSignInParams params) async {
    try {
      return _executeBasedOnConnection<bool>(
        onConnectedAction: () async {
          final result = await _remoteDataSource.deleteUserAccount(params);

          return Right(foldEitherRight(result));
        },
        onNotConnectedAction: () => _throwNoConnectionException('signUp'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<bool>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFuture<UserEntity> update(UserEntity user) async {
    try {
      return _executeBasedOnConnection<UserEntity>(
        onConnectedAction: () async {
          final result = await _remoteDataSource.updateUser(
            UserSupabaseModel.fromEntity(user),
          );
          await _localDataSource.updateUser(_mapper.toHiveModel(user));
          return Right(_mapper.toEntityFromSupabaseFoldEither(result));
        },
        onNotConnectedAction: () => _throwNoConnectionException('update'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid changePassword(ChangePasswordParams params) async {
    try {
      return _executeBasedOnConnection<void>(
        onConnectedAction: () async {
          await _remoteDataSource.changePassword(params);
          return const Right(null);
        },
        onNotConnectedAction: () => _throwNoConnectionException('changePassword'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid resetPassword(String email) async {
    try {
      return _executeBasedOnConnection<void>(
        onConnectedAction: () async => _remoteDataSource.resetPassword(email),
        onNotConnectedAction: () => _throwNoConnectionException('resetPassword'),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

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

  Never _throwNoConnectionException(String location) => throw Exception(
        'No internet connection!',
      );

  EResultFutureVoid _storeCurrentSession(RemoteSessionHiveModel session) async =>
      _localDataSource.storeSession(session);

  RemoteSessionHiveModel _toRemoteSession([Session? newSession]) {
    final session = newSession ?? _remoteDataSource.currentUserSession!;

    return RemoteSessionHiveModel(
      userId: session.user.id,
      accessToken: session.accessToken,
      refreshToken: session.refreshToken!,
      expiresAt: session.expiresAt!,
    );
  }
}
