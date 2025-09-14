import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class FetcBatchAllUseCase<Repo extends BaseRepository<Entity>, Entity>
    extends UseCaseWithoutParams<Repo, List<Entity>> {
  FetcBatchAllUseCase(super.repository);

  @override
  EResultFuture<List<Entity>> call() async => repository.get();
}
