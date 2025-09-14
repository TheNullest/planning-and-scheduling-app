import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class UpdateUseCase<Repo extends BaseRepository<Entity>, Entity>
    extends UseCaseWithParams<Repo, void, List<Entity>> {
  UpdateUseCase(super.repository);

  @override
  EResultFutureVoid call(List<Entity> params) async => repository.updateBatch(params);
}
