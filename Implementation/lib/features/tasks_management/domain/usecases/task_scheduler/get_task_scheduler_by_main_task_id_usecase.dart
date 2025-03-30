import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskSchedulerByTaskIdUsecase extends UseCaseWithParams<
    TaskSchedulerRepository, List<TaskSchedulerEntity>, String> {
  GetTaskSchedulerByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<TaskSchedulerEntity>> call(String params) async =>
      repository.getTaskSchedulersByMainTaskId(params);
}
