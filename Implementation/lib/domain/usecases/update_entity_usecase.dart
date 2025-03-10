import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class UpdateEntityUseCase<Entity extends BaseEntityAbstraction,
        Repo extends BaseRepositoryAbstraction<Entity>>
    extends UseCaseWithParams<Repo, void, Entity> {
  UpdateEntityUseCase(super.repository);
  @override
  ResultFutureVoid call(Entity params) async =>
      repository.updateEntity(entity: params);
}
