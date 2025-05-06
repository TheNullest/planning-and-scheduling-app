import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, void, Entity> {
  CreateUsecase(super.repository);
  @override
  EResultFutureVoid call(Entity params) async => repository.create(params);
}
