import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByTaskIdUsecase
    extends UseCaseWithParams<SubTaskRepository, List<SubTaskEntity>, String> {
  GetSubTasksByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(String params) async =>
      repository.getSubTasksByTaskId(params);
}
