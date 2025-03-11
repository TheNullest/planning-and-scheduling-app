import 'package:zamaan/core/utils/typedef.dart';
<<<<<<< HEAD:Implementation/lib/features/task_scheduler/domain/usecases/get_task_schedulers_by_main_task_ids_and_date_range_usecase.dart
import 'package:zamaan/features/task_scheduler/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/features/task_scheduler/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/features/task_scheduler/domain/repositories/task_scheduler_repository.dart';
=======
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
>>>>>>> temp-branch:Implementation/lib/features/tasks/domain/usecases/task_scheduler/get_task_schedulers_by_main_task_ids_and_date_range_usecase.dart

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
