import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByStatusUsecase
    extends UsecaseWithParams<TaskRepository, List<TaskEntity>, DynamicParam<TaskStatus>> {
  GetTasksByStatusUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(DynamicParam<TaskStatus> params) async =>
      repository.getBatchByStatus(params.param, policy: params.policy);
}
