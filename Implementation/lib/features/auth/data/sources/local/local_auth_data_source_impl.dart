import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
import 'package:zamaan/features/auth/data/sources/local/local_auth_data_source.dart';
import 'package:zamaan/features/auth/presentation/constants/auth_texts.dart';

/// A local data source implementation for authentication-related operations.
///
/// This class provides methods to interact with the local storage (Hive) for
/// storing, updating, and removing user data.
class LocalAuthDataSourceImpl extends LocalAuthDataSource {
  /// Creates a new instance of [LocalAuthDataSourceImpl].
  ///
  /// The [hiveBox] parameter is the Hive service used for local storage operations.
  /// If not provided, a default instance of [HiveServices<LocalUserModel>] is used.
  LocalAuthDataSourceImpl({
    HiveBoxRunner<RemoteSessionHiveModel>? hiveBox,
  }) : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<RemoteSessionHiveModel>>();

  /// The Hive service used for local storage operations.
  final HiveBoxRunner<RemoteSessionHiveModel> _hiveBox;

  /// Retrieves the current user from the local storage.
  ///
  /// Returns a [EResultFuture] containing the [RemoteSessionHiveModel] of the current user
  /// or a [Failure] if an error occurs.
  @override
  EResultFuture<RemoteSessionHiveModel> getCurrentUser() async =>
      tryCatchEither<RemoteSessionHiveModel>(
        action: () async => _hiveBox.runBoxOperation<RemoteSessionHiveModel>(
          job: (box) async => box.values.first,
        ),
        failureType: FailureType.local,
      );

  /// Stores the current user in the local storage.
  ///
  /// The [session] parameter is the [RemoteSessionHiveModel] object representing the user to be stored.
  ///
  /// Returns a [EResultFutureVoid] indicating the success or failure of the operation.
  @override
  EResultFutureVoid storeCurrentUser(RemoteSessionHiveModel session) async => tryCatchEither(
        action: () async => _hiveBox.runBoxOperation(
          job: (box) async {
            // Check if the user already exists in the database
            // and throw an exception if it does.
            // Otherwise, add the user to the database or update the existing user info.
            final existing = box.values
                .where((u) => u.accessToken == session.accessToken && u.user.id != session.user.id);
            if (existing.isNotEmpty) {
              throw Exception(
                session.user.userName + AuthTexts.errors.entityExistsInDatabase,
              );
            }
            await box.add(session);
          },
        ),
        failureType: FailureType.local,
      );

  /// Updates the current user in the local storage.
  ///
  /// The [session] parameter is the [RemoteSessionHiveModel] object representing the user to be updated.
  ///
  /// Returns a [EResultFutureVoid] indicating the success or failure of the operation.
  @override
  EResultFutureVoid updateCurrentUser(RemoteSessionHiveModel session) async => tryCatchEither(
        action: () async => _hiveBox.runBoxOperation(
          job: (box) async {
            await box.put(session.accessToken, session);
          },
        ),
        failureType: FailureType.local,
      );

  /// Signs out the current user by clearing the local storage.
  ///
  /// Returns a [EResultFutureVoid] indicating the success or failure of the operation.
  @override
  EResultFutureVoid signOut() async => tryCatchEither(
        action: () async => _hiveBox.runBoxOperation(
          job: (box) async => box.clear(),
        ),
        failureType: FailureType.local,
      );
}
