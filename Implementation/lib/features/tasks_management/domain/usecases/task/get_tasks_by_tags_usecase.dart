import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByTagsUsecase
    extends UsecaseWithParams<TaskRepository, List<TaskEntity>, DynamicParam<List<String>>> {
  GetTasksByTagsUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(DynamicParam<List<String>> params) async =>
      repository.getBatchByTags(params.param, policy: params.policy);
}
