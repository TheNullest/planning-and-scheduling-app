import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/services/hive/hive_encryptions_service.dart';
import 'package:zamaan/core/services/hive/hive_wrapper.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';

abstract class HiveBoxRunner<HiveModel> {
  HiveBoxRunner({required this.hive, required this.boxName, required this.secureStorage});

  final HiveWrapper hive;
  final String boxName;
  final HiveEncryptionService secureStorage;
  EResultFuture<T> runBoxOperation<T>({
    required Future<T> Function(Box<HiveModel> box) job,
  });
}

/// A generic service class for working with Hive boxes. It is parameterized
class HiveBoxRunnerImpl<HiveModel> extends HiveBoxRunner<HiveModel> {
  HiveBoxRunnerImpl({
    required super.hive,
    required super.boxName,
    required super.secureStorage,
  });

  /// Provides a convenient operator to run a job using a Hive box.
  ///
  /// The [job] is required. The [job] is a function that
  /// takes a [Box<HiveModel>] and returns a [Future] with the desired result.
  ///
  /// **Note:** Hive boxes are generally intended to be long‑lived. Closing
  /// after each access may not always be optimal; consider managing the box's
  /// lifecycle at a higher level if performance is a concern.
  @override
  EResultFuture<T> runBoxOperation<T>({
    required Future<T> Function(Box<HiveModel> box) job,
  }) async {
    try {
      final encryptionKey = await secureStorage.getEncryptionKey();

      if (!hive.isBoxOpen(boxName)) {
        await hive.openBox<HiveModel>(
          boxName,
          encryptionCipher: HiveAesCipher(encryptionKey),
        );
      }

      final box = hive.box<HiveModel>(boxName);
      final result = await job(box);
      return Right(result);
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<T>(e: e, stackTrace: stackTrace);
    }
  }
}

