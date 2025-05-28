import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class DeleteBatchSubTasksByTaskIdUsecase extends UsecaseWithParams<SubTaskRepository, void, String> {
  DeleteBatchSubTasksByTaskIdUsecase(super.repository);

  @override
  EResultFuture<void> call(String params) async => repository.deleteByTaskId(params);
}
