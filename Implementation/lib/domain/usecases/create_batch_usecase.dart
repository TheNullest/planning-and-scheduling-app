import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateBatchUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, void, List<Entity>> {
  CreateBatchUsecase(super.repository);
  @override
  EResultFutureVoid call(List<Entity> params) async => repository.createBatch(params);
}
