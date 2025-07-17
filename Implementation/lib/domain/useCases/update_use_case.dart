import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class UpdateUseCase<Entity, Repo extends BaseRepository<Entity>>
    extends UseCaseWithParams<Repo, void, Entity> {
  UpdateUseCase(super.repository);

  @override
  EResultFutureVoid call(Entity entity) async => repository.update(entity);
}
