import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';

class GetSubTasksByMainTaskIdUsecase
    extends UseCaseWithParams<SubTaskRepository, List<SubTaskEntity>, String> {
  GetSubTasksByMainTaskIdUsecase(super.repository);

  @override
  ResultFuture<List<SubTaskEntity>> call(String params) async =>
      repository.getSubTasksByMainTaskId(params);
}
