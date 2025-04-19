import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByTaskIdUsecase
    extends UsecaseWithParams<SubTaskRepository, List<SubTaskEntity>, DynamicParam<String>> {
  GetSubTasksByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(DynamicParam<String> params) async =>
      repository.getBatchByTaskId(params.param, policy: params.policy);
}
