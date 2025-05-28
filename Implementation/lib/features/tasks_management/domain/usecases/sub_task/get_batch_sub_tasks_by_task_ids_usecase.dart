import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetBatchSubTasksByTaskIdsUsecase
    extends UsecaseWithParams<SubTaskRepository, List<SubTaskEntity>, List<String>> {
  GetBatchSubTasksByTaskIdsUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(List<String> params) async =>
      repository.getBatchByTaskIds(params);
}
