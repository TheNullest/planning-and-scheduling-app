import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/platform/directory_wrapper.dart';
import 'package:zamaan/core/platform/path_provider_wrapper.dart';
import 'package:zamaan/core/platform/platform_wrapper.dart';
import 'package:zamaan/core/services/hive/hive_encryptions_service.dart';
import 'package:zamaan/core/services/hive/hive_wrapper.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/models/local/hive/sync_log.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';

/// A generic service class for working with Hive boxes. It is parameterized
class HiveServices<HiveModel> {
  HiveServices({
    required HiveWrapper hive,
    required PlatformWrapper platform,
    required PathProviderWrapper pathProvider,
    required DirectoryWrapper directory,
  })  : _directory = directory,
        _pathProvider = pathProvider,
        _platform = platform,
        _hive = hive;

  final HiveWrapper _hive;
  final PlatformWrapper _platform;
  final PathProviderWrapper _pathProvider;
  final DirectoryWrapper _directory;

  /// Initializes Hive by setting the document directory and registering
  /// all required adapters.
  Future<void> init() async {
    if (_platform.isWindows) {
      _directory.directory = Directory(r'E:\Flutter.Dart\HiveFiles\Zamaan');
    } else {
      _directory.directory = await _pathProvider.getApplicationDocumentsDirectory();
    }
    if (!_directory.existsSync()) {
      await _directory.create(recursive: true);
    }
    await _hive.initFlutter(_directory.path);

    final adapters = <HiveBaseTypeAdapter>[
      UserHiveModelAdapter(),
      TaskHiveModelAdapter(),
      CategoryHiveModelAdapter(),
      GoalHiveModelAdapter(),
      MeasurementUnitHiveModelAdapter(),
      TaskSchedulerHiveModelAdapter(),
      SubTaskHiveModelAdapter(),
      TagHiveModelAdapter(),
      TaskActivityHiveModelAdapter(),
      LogHiveModelAdapter(),
      SyncLogHiveModelAdapter(),
      DeviceHiveModelAdapter(),
    ];

    for (final adapter in adapters) {
      if (!_hive.isAdapterRegistered(adapter.typeId)) {
        _hive.registerAdapter(adapter);
      }
    }
  }

  /// Provides a convenient operator to run a job using a Hive box.
  ///
  /// The [boxName] and [job] are required. The [job] is a function that
  /// takes a [Box<HiveModel>] and returns a [Future] with the desired result.
  ///
  /// This method wraps the box access in error handling (using [tryCatchEither])
  /// and ensures that the box is opened before the job and closed afterward.
  ///
  /// **Note:** Hive boxes are generally intended to be long‑lived. Closing
  /// after each access may not always be optimal; consider managing the box's
  /// lifecycle at a higher level if performance is a concern.
  EResultFuture<T> operator<T>({
    required String boxName,
    required Future<T> Function(Box<HiveModel> box) job,
  }) async {
    return tryCatchEither<T>(
      action: () async {
        final encryptionService = HiveEncryptionService();
        final encryptionKey = await encryptionService.getEncryptionKey();

        if (!_hive.isBoxOpen(boxName)) {
          await _hive.openBox<HiveModel>(
            boxName,
            encryptionCipher: HiveAesCipher(encryptionKey),
          );
        }
        final box = _hive.box<HiveModel>(boxName);
        final result = await job(box);
        // Optionally close the box. Depending on your app's design,
        // keeping the box open may be more efficient.
        if (box.isOpen) {
          await _hive.closeAllBoxes();
        }
        return Right(result);
      },
      failureType: FailureType.local,
      onFinally: () async => _hive.closeAllBoxes(),
    );
  }
}
