import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, String, Entity> {
  CreateUsecase(super.repository);
  @override
  EResultFuture<String> call(Entity params) async => repository.create(params);
}
