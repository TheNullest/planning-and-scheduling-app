import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class BaseRepositoryAbstraction<Entity extends BaseEntityAbstraction> {
  EResultFutureVoid createEntity({required Entity newEntity});

  EResultFuture<List<Entity>?> getEntities();

  EResultFuture<Entity?> getEntity({required String id});

  EResultFutureVoid updateEntity({required Entity entity});

  EResultFutureVoid deleteEntity({required String id});

  EResultFutureVoid deleteAllSelected(List<String> keys);
}
