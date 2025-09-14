import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetSubTasksByTaskIdsUseCase
    extends UseCaseWithParams<SubTaskRepository, List<SubTaskEntity>, List<String>> {
  GetSubTasksByTaskIdsUseCase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(List<String> params) async =>
      repository.getByTaskIds(params);
}
