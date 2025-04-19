import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteUsecase<Repo extends BaseRepository>
    extends UsecaseWithParams<Repo, void, DynamicParam<String>> {
  DeleteUsecase(super.repository);
  @override
  EResultFutureVoid call(DynamicParam<String> params) async =>
      repository.delete(params.param, policy: params.policy);
}
