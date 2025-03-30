import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetEntityUseCase<Repo extends BaseRepositoryAbstraction<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UseCaseWithParams<Repo, Entity?, String> {
  GetEntityUseCase(super.repository);
  @override
  EResultFuture<Entity?> call(String params) async =>
      repository.getEntity(id: params);
}
