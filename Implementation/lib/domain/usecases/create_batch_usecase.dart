import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateBatchUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, void, DynamicParam<List<Entity>>> {
  CreateBatchUsecase(super.repository);
  @override
  EResultFutureVoid call(DynamicParam<List<Entity>> params) async =>
      repository.createBatch(params.param, policy: DataSourcePolicy.localFirst);
}
