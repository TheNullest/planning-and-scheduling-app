import 'package:dartz/dartz.dart';
import 'package:zamaan/features/auth/presentation/constants/auth_texts.dart';
import 'package:zamaan/features/auth/presentation/constants/hive_box_constants.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/sources/local/local_auth_data_source.dart';
import 'package:zamaan/features/auth/data/models/local/local_user_model.dart';

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
    HiveServices<LocalUserModel>? hiveBox,
  }) : _hiveBox = hiveBox ?? HiveServices<LocalUserModel>();

  /// The name of the Hive box used for storing user data.
  final String _boxName = HiveBoxConstants.USERS_BOX;

  /// The Hive service used for local storage operations.
  final HiveServices<LocalUserModel> _hiveBox;

  /// Retrieves the current user from the local storage.
  ///
  /// Returns a [ResultFuture] containing the [LocalUserModel] of the current user
  /// or a [Failure] if an error occurs.
  @override
  ResultFuture<LocalUserModel> getCurrentUser() async =>
      tryCatchEither<LocalUserModel>(
        action: () async => _hiveBox.operator<LocalUserModel>(
          job: (box) async => box.values.first,
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  /// Stores the current user in the local storage.
  ///
  /// The [user] parameter is the [LocalUserModel] object representing the user to be stored.
  ///
  /// Returns a [ResultFutureVoid] indicating the success or failure of the operation.
  @override
  ResultFutureVoid storeCurrentUser(LocalUserModel user) async =>
      tryCatchEither(
        action: () async {
          await _hiveBox.operator(
            job: (box) async {
              final existing =
                  box.values.where((u) => u.userName == user.userName);
              if (existing.isNotEmpty) {
                throw Exception(
                  user.userName + AuthTexts.errors.entityExistsInDatabase,
                );
              }
              await box.add(user);
            },
            boxName: _boxName,
          );
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  /// Updates the current user in the local storage.
  ///
  /// The [user] parameter is the [LocalUserModel] object representing the user to be updated.
  ///
  /// Returns a [ResultFutureVoid] indicating the success or failure of the operation.
  @override
  ResultFutureVoid updateCurrentUser(LocalUserModel user) async =>
      storeCurrentUser(user);

  /// Signs out the current user by clearing the local storage.
  ///
  /// Returns a [ResultFutureVoid] indicating the success or failure of the operation.
  @override
  ResultFutureVoid signOut() async => tryCatchEither(
        action: () async {
          await _hiveBox.operator(
            job: (box) async => box.clear(),
            boxName: _boxName,
          );
          return const Right(null);
        },
        failureType: FailureType.local,
      );
}
