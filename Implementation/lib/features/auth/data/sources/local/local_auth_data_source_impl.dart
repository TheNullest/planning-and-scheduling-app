import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/sources/local/local_auth_data_source.dart';

/// A local data source implementation for authentication-related operations.
///
/// This class provides methods to interact with the local storage (Hive) for
/// storing, updating, and removing user data.
class LocalAuthDataSourceImpl extends LocalAuthDataSource {
  LocalAuthDataSourceImpl({
    required HiveBoxRunner<RemoteSessionHiveModel> sessionsBox,
    required HiveBoxRunner<UserHiveModel> usersBox,
  })  : _sessionsBox = sessionsBox,
        _usersBox = usersBox;

  /// The Hive service used for local storage operations.
  final HiveBoxRunner<RemoteSessionHiveModel> _sessionsBox;
  final HiveBoxRunner<UserHiveModel> _usersBox;

  @override
  EResultFuture<RemoteSessionHiveModel> getSession() async {
    try {
      return await _sessionsBox.runBoxOperation<RemoteSessionHiveModel>(
        job: (box) async => box.values.first,
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<UserHiveModel> getUser() async {
    try {
      return await _usersBox.runBoxOperation<UserHiveModel>(
        job: (box) async => box.values.first,
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid storeUser(UserHiveModel user) async {
    try {
      return await _usersBox.runBoxOperation<void>(
        job: (box) async {
          final existing = box.get(user.id);
          if (existing != null) return;
          await updateUser(user);
        },
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid storeSession(RemoteSessionHiveModel session) async {
    try {
      return await _sessionsBox.runBoxOperation<void>(
        job: (box) async {
          final existing = box.get(session.userId);
          if (existing != null) return;

          await updateSession(session);
        },
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid updateUser(UserHiveModel user) async {
    try {
      return _usersBox.runBoxOperation<void>(
        job: (box) async {
          await box.put(user.id, user);
        },
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  EResultFutureVoid updateSession(RemoteSessionHiveModel session) async {
    try {
      return _sessionsBox.runBoxOperation<void>(
        job: (box) async {
          await box.put(session.userId, session);
        },
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<void>(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Signs out the current user by clearing the local storage.
  ///
  /// Returns a [EResultFutureVoid] indicating the success or failure of the operation.
  @override
  EResultFutureVoid signOut() async {
    try {
      await _usersBox.runBoxOperation(
        job: (box) async => box.clear(),
      );

      return await _sessionsBox.runBoxOperation(
        job: (box) async => box.clear(),
      );
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }
}
