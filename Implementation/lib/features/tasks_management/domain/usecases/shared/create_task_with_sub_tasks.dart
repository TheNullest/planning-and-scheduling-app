import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_task_with_sub_tasks.dart';

class CreateTaskWithSubTasksUsecase
    extends UsecaseWithParams<TaskRepository, void, CreateTaskWithSubTasksParams> {
  CreateTaskWithSubTasksUsecase({
    required TaskRepository taskRepo,
    required SubTaskRepository subTaskRepo,
  })  : _subTaskRepo = subTaskRepo,
        super(taskRepo);

  final SubTaskRepository _subTaskRepo;
  @override
  EResultFutureVoid call(CreateTaskWithSubTasksParams params) async {
    final taskResult = await repository.create(
      params.task,
      policy: params.policy,
    );

    return foldEitherJob(
      taskResult,
      () async => _subTaskRepo.createBatch(
        params.subTasks,
        policy: params.policy,
      ),
    );
  }
}
