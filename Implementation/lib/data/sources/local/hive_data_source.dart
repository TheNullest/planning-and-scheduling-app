import 'package:dartz/dartz.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/local_exception.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class HiveDataSource<HiveModel extends BaseEntityAbstraction>
    extends BaseDataSource<HiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<HiveModel>] like this
  HiveDataSource(
    this._boxName, {
    HiveServices<HiveModel>? hiveServices,
  }) : _hiveServices = hiveServices ?? serviceLocator<HiveServices<HiveModel>>();
  final String _boxName;
  final HiveServices<HiveModel> _hiveServices;

  /// #### Saves the `[item]` to the Hive box conditionally.
  @override
  EResultFutureVoid create(
    HiveModel newEntity, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      _hiveServices.operator(
        job: (box) async => box.put(newEntity.id, newEntity),
        boxName: _boxName,
      );

  @override
  EResultFutureVoid createBatch(
    List<HiveModel> entities, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      _hiveServices.operator(
        job: (box) async {
          final map = {for (final model in entities) model.id: model};
          return box.putAll(map);
        },
        boxName: _boxName,
      );

  @override
  EResultFutureVoid delete(String id, {bool fromLocal = false, bool fromRemote = false}) async {
    if (!isValidUUID(id)) {
      throw LocalException(
        message: 'This $id is not a valid [UUID] ',
        errorLocation: 'BaseLocalDataSourceAbstraction.deleteEntity',
      );
    }
    return _hiveServices.operator<void>(
      job: (box) async => box.delete(id),
      boxName: _boxName,
    );
  }

  @override
  EResultFutureVoid updateBatch(
    List<HiveModel> entities, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async => _hiveServices.operator(
          job: (box) async => box.putAll({for (final model in entities) model.id: model}),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  /// Retrieves all items from the Hive box.
  @override
  EResultFuture<List<HiveModel>> getAll({bool fromLocal = false, bool fromRemote = false}) async =>
      _hiveServices.operator<List<HiveModel>>(
        job: (box) async => box.values.toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<HiveModel> getByValue(
    String id, {
    bool fromLocal = false,
    bool fromRemote = false,
    String fieldName = 'id',
  }) async =>
      tryCatchEither(
        action: () async => _hiveServices.operator<HiveModel>(
          job: (box) async => box.get(id)!,
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<HiveModel>> getAllByValues(
    List<String> values, {
    bool fromLocal = false,
    bool fromRemote = false,
    String fieldName = 'id',
  }) async =>
      tryCatchEither<List<HiveModel>>(
        action: () async => _hiveServices.operator<List<HiveModel>>(
          job: (box) async => values.map((id) => box.get(id)).whereType<HiveModel>().toList(),
          boxName: _boxName,
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
  EResultFutureVoid update(
    HiveModel entity, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      create(entity);

  @override
  EResultFutureVoid deleteBatch(
    List<String> ids, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async => _hiveServices.operator(
          job: (box) async {
            final invalidKeys = <String>[];

            for (final key in ids) {
              if (!isValidUUID(key)) invalidKeys.add(key);
            }
            if (invalidKeys.isNotEmpty) {
              throw LocalException(
                message: 'This $id is not a valid [UUID] ',
                errorLocation: 'BaseLocalDataSourceAbstraction.deleteEntity',
              );
            }
            return box.deleteAll(ids);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<bool> exists(String id, {bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async => _hiveServices.operator<bool>(
          job: (box) async => box.containsKey(id),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<HiveModel>> getAllWithinDateRange({
    required DateTime fromDate,
    required DateTime toDate,
    bool fromLocal = false,
    bool fromRemote = false,
    String fieldName = 'created_at',
  }) async =>
      tryCatchEither(
        action: () async => _hiveServices.operator<List<HiveModel>>(
          job: (box) async => box.values
              .where(
                (item) =>
                    item.createdAt.compareTo(fromDate) >= 0 &&
                    item.createdAt.compareTo(toDate) <= 0,
              )
              .toList(),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );
}
