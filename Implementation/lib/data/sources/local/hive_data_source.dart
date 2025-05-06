import 'package:dartz/dartz.dart';
import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/errors/exceptions/local_exception.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

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
  EResultFutureVoid create(HiveModel newEntity) async => _hiveServices.runBoxOperation(
        job: (box) async => box.put(newEntity.id, newEntity),
      );

  @override
  EResultFutureVoid createBatch(List<HiveModel> entities) async => _hiveServices.runBoxOperation(
        job: (box) async {
          final map = {for (final model in entities) model.id: model};
          return box.putAll(map);
        },
      );

  @override
  EResultFutureVoid delete(String id) async {
    if (!isValidUVMD(id)) {
      throw LocalException(
        message: 'This $id is not a valid [UVMD] ',
        errorLocation: 'BaseLocalDataSourceAbstraction.deleteEntity',
      );
    }
    return _hiveServices.runBoxOperation<void>(
      job: (box) async => box.delete(id),
    );
  }

  @override
  EResultFutureVoid updateBatch(List<HiveModel> entities) async => tryCatchEither(
        action: () async => _hiveServices.runBoxOperation(
          job: (box) async => box.putAll({for (final model in entities) model.id: model}),
        ),
        failureType: FailureType.local,
      );

  /// Retrieves all items from the Hive box.
  @override
  EResultFuture<List<HiveModel>> getAll() async => _hiveServices.runBoxOperation<List<HiveModel>>(
        job: (box) async => box.values.toList(),
      );

  @override
  EResultFuture<HiveModel> getById(String id) async => tryCatchEither(
        action: () async => _hiveServices.runBoxOperation<HiveModel>(
          job: (box) async => box.get(id)!,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<HiveModel>> getAllByIds(List<String> ids) async =>
      tryCatchEither<List<HiveModel>>(
        action: () async => _hiveServices.runBoxOperation<List<HiveModel>>(
          job: (box) async => ids.map((id) => box.get(id)).whereType<HiveModel>().toList(),
        ),
        failureType: FailureType.local,
      );

  /// Updates the `[item]` in the Hive box.
  ///
  /// Becuase the entity.id is already save, the put command will
  /// replace the existing data,
  ///
  /// for this reason, the [create] function is used again
  @override
  EResultFutureVoid update(HiveModel entity) async => create(entity);

  @override
  EResultFutureVoid deleteBatch(List<String> ids) async => tryCatchEither(
        action: () async => _hiveServices.runBoxOperation(
          job: (box) async {
            final invalidKeys = <String>[];

            for (final key in ids) {
              if (!isValidUVMD(key)) invalidKeys.add(key);
            }
            if (invalidKeys.isNotEmpty) {
              throw LocalException(
                message: 'This $id is not a valid [UVMD] ',
                errorLocation: 'BaseLocalDataSourceAbstraction.deleteEntity',
              );
            }
            return box.deleteAll(ids);
          },
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<bool> exists(
    String id,
  ) async =>
      tryCatchEither(
        action: () async => _hiveServices.runBoxOperation<bool>(
          job: (box) async => box.containsKey(id),
        ),
        failureType: FailureType.local,
      );
}
