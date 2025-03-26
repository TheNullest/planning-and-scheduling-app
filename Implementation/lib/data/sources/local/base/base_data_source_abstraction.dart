import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

abstract class BaseDataSourceAbstraction<Model extends BaseEntityAbstraction> {
  ResultFutureVoid createEntity({required Model newEntity});

  ResultFuture<List<Model>> getEntities();

  ResultFuture<Model> getEntity({required String id});

  ResultFutureVoid updateEntity({required Model entity});

  ResultFutureVoid deleteEntity({required String id});

  ResultFutureVoid deleteAllSelected(List<String> keys);
}
