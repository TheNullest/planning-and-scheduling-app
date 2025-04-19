import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetScheduledTaskByTaskIdUsecase extends UsecaseWithParams<ScheduledTaskRepository,
    List<ScheduledTaskEntity>, DynamicParam<String>> {
  GetScheduledTaskByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<ScheduledTaskEntity>> call(DynamicParam<String> params) async =>
      repository.getBatchByTaskId(params.param, policy: params.policy);
}
