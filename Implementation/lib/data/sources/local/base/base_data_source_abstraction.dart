import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class BaseDataSourceAbstraction<Model extends BaseEntityAbstraction> {
  EResultFutureVoid createEntity({required Model newEntity});

  EResultFuture<List<Model>> getEntities();

  EResultFuture<Model> getEntity({required String id});

  EResultFutureVoid updateEntity({required Model entity});

  EResultFutureVoid deleteEntity({required String id});

  EResultFutureVoid deleteAllSelected(List<String> keys);
}
