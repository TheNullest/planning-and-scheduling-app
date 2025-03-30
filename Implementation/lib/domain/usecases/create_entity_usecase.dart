import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateEntityUseCase<
        Repo extends BaseRepositoryAbstraction<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UseCaseWithParams<Repo, void, Entity> {
  CreateEntityUseCase(super.repository);
  @override
  EResultFutureVoid call(Entity params) async =>
      repository.createEntity(newEntity: params);
}
