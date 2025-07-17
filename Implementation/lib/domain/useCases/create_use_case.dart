import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class CreateUseCase<Repo extends BaseRepository<Entity>, Entity>
    extends UseCaseWithParams<Repo, String, Entity> {
  CreateUseCase(super.repository);
  @override
  EResultFuture<String> call(Entity params) async => repository.create(params);
}