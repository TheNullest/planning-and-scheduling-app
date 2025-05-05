import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class UpdateBatchUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, void, DynamicParam<List<Entity>>> {
  UpdateBatchUsecase(super.repository);

  @override
  EResultFutureVoid call(DynamicParam<List<Entity>> params) async =>
      repository.updateBatch(params.param, policy: params.policy);
}
