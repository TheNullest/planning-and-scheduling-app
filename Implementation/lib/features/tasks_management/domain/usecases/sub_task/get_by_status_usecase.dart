import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByStatusUsecase
    extends UsecaseWithParams<SubTaskRepository, List<SubTaskEntity>, DynamicParam<TaskStatus>> {
  GetSubTasksByStatusUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(DynamicParam<TaskStatus> params) async =>
      repository.getBatchByStatus(params.param, policy: params.policy);
}
