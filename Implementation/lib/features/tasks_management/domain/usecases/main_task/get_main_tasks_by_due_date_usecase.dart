import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByDueDateUsecase
    extends UseCaseWithParams<TaskRepository, List<TaskEntity>, DateTime> {
  GetTasksByDueDateUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(DateTime params) async =>
      repository.getTasksByDueDate(params);
}
