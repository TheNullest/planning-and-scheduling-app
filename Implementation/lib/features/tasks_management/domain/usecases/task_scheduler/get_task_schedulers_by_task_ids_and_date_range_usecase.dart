import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/params/date_range_params.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskSchedulerByTaskIdsAndDateRangeUsecase extends UsecaseWithParams<
    TaskSchedulerRepository, List<TaskSchedulerEntity>, DateRangeParams<List<String>>> {
  GetTaskSchedulerByTaskIdsAndDateRangeUsecase(super.repository);

  @override
  EResultFuture<List<TaskSchedulerEntity>> call(DateRangeParams<List<String>> params) async =>
      repository.getBatchByTaskIdsAndDateRange(
        taskIds: params.param!,
        startAt: params.startAt,
        dueDate: params.dueDate,
      );
}
