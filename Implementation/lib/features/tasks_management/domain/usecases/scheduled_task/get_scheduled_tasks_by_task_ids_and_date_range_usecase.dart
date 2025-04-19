import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/params/ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetScheduledTaskByTaskIdsAndDateRangeUsecase extends UsecaseWithParams<
    ScheduledTaskRepository, List<ScheduledTaskEntity>, DynamicWithDateRangeParams<List<String>>> {
  GetScheduledTaskByTaskIdsAndDateRangeUsecase(super.repository);

  @override
  EResultFuture<List<ScheduledTaskEntity>> call(
    DynamicWithDateRangeParams<List<String>> params,
  ) async =>
      repository.getBatchByTaskIdsAndDateRange(
        taskIds: params.params,
        startAt: params.fromDate,
        dueDate: params.toDate,
      );
}
