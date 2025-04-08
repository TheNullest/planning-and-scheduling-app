import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByStatusUsecase
    extends UseCaseWithParams<TaskRepository, List<TaskEntity>, Status> {
  GetTasksByStatusUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(Status params) async =>
      repository.getTasksByStatus(params);
}
