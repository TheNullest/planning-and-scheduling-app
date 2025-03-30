import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class BaseCRUDOperations<
    Entity extends BaseEntityAbstraction,
    HiveModel extends Entity,
    LocalDataSource extends BaseDataSourceAbstraction<HiveModel>> {
  BaseCRUDOperations(LocalDataSource localDataSource)
      : _localDataSource = localDataSource;
  final LocalDataSource _localDataSource;

  HiveModel fromEntity(Entity entity);
  Entity toEntity(HiveModel model);

  EResultFutureVoid createEntity({required Entity newEntity}) async {
    return tryCatchEither(
      action: () async => _localDataSource
          .createEntity(newEntity: fromEntity(newEntity))
          .then((_) => const Right(null)),
    );
  }

  EResultFuture<List<Entity>?> getEntities() async {
    return tryCatchEither<List<Entity>?>(
      action: () async {
        final models = await _localDataSource.getEntities();
        return models.map((models) => models.map(toEntity).toList());
      },
    );
  }

  EResultFuture<Entity?> getEntity({required String id}) async =>
      tryCatchEither<Entity?>(
        action: () async {
          final model = await _localDataSource.getEntity(id: id);
          return model.map(toEntity);
        },
      );

  EResultFutureVoid updateEntity({required Entity entity}) async =>
      tryCatchEither(
        action: () async => _localDataSource
            .updateEntity(entity: fromEntity(entity))
            .then((_) => const Right(null)),
      );

  EResultFutureVoid deleteEntity({required String id}) async => tryCatchEither(
        action: () async => _localDataSource
            .deleteEntity(id: id)
            .then((_) => const Right(null)),
      );

  EResultFutureVoid deleteAllSelected(List<String> keys) async =>
      tryCatchEither(
        action: () async => _localDataSource
            .deleteAllSelected(keys)
            .then((_) => const Right(null)),
      );
}
