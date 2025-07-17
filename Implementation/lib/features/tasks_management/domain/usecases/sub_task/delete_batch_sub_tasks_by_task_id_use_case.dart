import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class DeleteBatchSubTasksByTaskIdUseCase extends UseCaseWithParams<SubTaskRepository, void, String> {
  DeleteBatchSubTasksByTaskIdUseCase(super.repository);

  @override
  EResultFuture<void> call(String params) async => repository.deleteByTaskId(params);
}
