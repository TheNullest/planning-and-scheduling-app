import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteBatchUsecase<Repo extends BaseRepository>
    extends UsecaseWithParams<Repo, void, DynamicParam<List<String>>> {
  DeleteBatchUsecase(super.repository);
  @override
  EResultFutureVoid call(DynamicParam<List<String>> params) async =>
      repository.deleteBatch(params.param, policy: params.policy);
}
