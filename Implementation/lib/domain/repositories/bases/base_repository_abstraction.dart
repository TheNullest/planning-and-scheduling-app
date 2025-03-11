import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class BaseRepositoryAbstraction<Entity extends BaseEntityAbstraction> {
  ResultFutureVoid createEntity({required Entity newEntity});

  ResultFuture<List<Entity>?> getEntities();

  ResultFuture<Entity?> getEntity({required String id});

  ResultFutureVoid updateEntity({required Entity entity});

  ResultFutureVoid deleteEntity({required String id});

  ResultFutureVoid deleteAllSelected(List<String> keys);
}
