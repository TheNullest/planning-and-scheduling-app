import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetEntitiesUseCase<
        Repo extends BaseRepositoryAbstraction<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UseCaseWithoutParams<Repo, List<Entity>?> {
  GetEntitiesUseCase(super.repository);
  @override
  ResultFuture<List<Entity>?> call() async => repository.getEntities();
}
