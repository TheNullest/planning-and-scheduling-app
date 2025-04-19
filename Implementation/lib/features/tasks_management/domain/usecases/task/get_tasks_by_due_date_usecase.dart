import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/get_with_data_range.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByDueDateUsecase
    extends UsecaseWithParams<TaskRepository, List<TaskEntity>, GetWithDateRangeParams> {
  GetTasksByDueDateUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(GetWithDateRangeParams params) async =>
      repository.getBatchByDueDateRange(
        dueDateFrom: params.fromDate,
        dueDateTo: params.toDate,
        policy: params.policy,
      );
}
