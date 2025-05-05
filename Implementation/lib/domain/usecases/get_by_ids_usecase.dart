import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetByIdsUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, List<Entity?>, List<String>> {
  GetByIdsUsecase(super.repository);
  @override
  EResultFuture<List<Entity>> call(List<String> params) async => repository.getByIds(params);
}
