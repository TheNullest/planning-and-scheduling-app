import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByPriorityUsecase
    extends UsecaseWithParams<TaskRepository, List<TaskEntity>, DynamicParam<Priority>> {
  GetTasksByPriorityUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(DynamicParam<Priority> params) async =>
      repository.getBatchByPriority(params.param, policy: params.policy);
}
