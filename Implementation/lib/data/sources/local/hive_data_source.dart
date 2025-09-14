import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class HiveDataSource<HiveModel extends BaseEntityAbstraction>
    extends BaseDataSource<HiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<HiveModel>] like this
  HiveDataSource({
    HiveBoxRunner<HiveModel>? hiveServices,
  }) : _hiveServices = hiveServices ?? serviceLocator<HiveBoxRunner<HiveModel>>();
  final HiveBoxRunner<HiveModel> _hiveServices;

  /// #### Saves the `[item]` to the Hive box conditionally.
  @override
  EResultFutureVoid create(HiveModel newEntity) async {
    try {
      return await _hiveServices.runBoxOperation(
        job: (box) async => box.put(newEntity.id, newEntity),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid createBatch(List<HiveModel> entities) async {
    try {
      final map = {for (final model in entities) model.id: model};
      return await _hiveServices.runBoxOperation(
        job: (box) async => box.putAll(map),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid delete(String id) async {
    try {
      return await _hiveServices.runBoxOperation<void>(
        job: (box) async => box.delete(id),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid updateBatch(List<HiveModel> entities) async {
    try {
      return await _hiveServices.runBoxOperation(
        job: (box) async => box.putAll({
          for (final model in entities) model.id: model,
        }),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  /// Retrieves all items from the Hive box.
  @override
  EResultFuture<List<HiveModel>> get() async {
    try {
      return await _hiveServices.runBoxOperation<List<HiveModel>>(
        job: (box) async => box.values.toList(),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<HiveModel> getById(String id) async {
    try {
      return await _hiveServices.runBoxOperation<HiveModel>(
        job: (box) async => box.get(id)!,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<HiveModel>> getByIds(List<String> ids) async {
    try {
      return await _hiveServices.runBoxOperation<List<HiveModel>>(
        job: (box) async => ids.map((id) => box.get(id)).whereType<HiveModel>().toList(),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  /// Updates the `[item]` in the Hive box.
  /// Because the entity.id is already saved, the put command will replace the existing data.
  /// For this reason, the [create] function is used again.
  @override
  EResultFutureVoid update(HiveModel entity) async => create(entity);

  @override
  EResultFutureVoid deleteBatch(List<String> ids) async {
    try {
      return await _hiveServices.runBoxOperation<void>(
        job: (box) async => box.deleteAll(ids),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<bool> exists(String id) async {
    try {
      return await _hiveServices.runBoxOperation<bool>(
        job: (box) async => box.containsKey(id),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
