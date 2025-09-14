import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class GetBatchByIdsUseCase<Repo extends BaseRepository<Entity>, Entity>
    extends UseCaseWithParams<Repo, List<Entity?>, List<String>> {
  GetBatchByIdsUseCase(super.repository);
  @override
  EResultFuture<List<Entity>> call(List<String> params) async => repository.getByIds(params);
}
