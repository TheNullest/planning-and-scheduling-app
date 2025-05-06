import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetAllUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithoutParams<Repo, List<Entity>> {
  GetAllUsecase(super.repository);

  @override
  EResultFuture<List<Entity>> call() async => repository.getAll();
}
