import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/params/get_by_task_ids_and_date_range_params.dart';

class GetTaskSchedulerByTaskIdsAndDateRangeUsecase extends UseCaseWithParams<
    TaskSchedulerRepository,
    List<TaskSchedulerEntity>,
    GetByTaskIdsAndDateRangeParams> {
  GetTaskSchedulerByTaskIdsAndDateRangeUsecase(super.repository);

  @override
  ResultFuture<List<TaskSchedulerEntity>> call(
    GetByTaskIdsAndDateRangeParams params,
  ) async =>
      repository.getTaskSchedulersByMainTaskIdsAndDateRange(params);
}
