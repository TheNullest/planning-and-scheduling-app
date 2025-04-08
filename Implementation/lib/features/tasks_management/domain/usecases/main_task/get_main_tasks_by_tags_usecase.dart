import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByTagsUsecase
    extends UseCaseWithParams<TaskRepository, List<TaskEntity>, List<String>> {
  GetTasksByTagsUsecase(super.repository);

  /// [params] = List of tag ids
  @override
  EResultFuture<List<TaskEntity>> call(List<String> params) async =>
      repository.getTasksByTags(params);
}
