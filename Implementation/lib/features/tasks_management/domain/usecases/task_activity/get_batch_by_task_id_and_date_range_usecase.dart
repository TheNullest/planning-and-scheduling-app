import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/params/ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskActivityByTaskIdAndDateRangeUsecase extends UsecaseWithParams<TaskActivityRepository,
    List<TaskActivityEntity>, DynamicWithDateRangeParams<String>> {
  GetTaskActivityByTaskIdAndDateRangeUsecase(super.repository);

  @override
  EResultFuture<List<TaskActivityEntity>> call(
    DynamicWithDateRangeParams<String> params,
  ) async =>
      repository.getBatchByTaskIdAndDateRange(
        taskId: params.params,
        startAt: params.fromDate,
        dueDate: params.toDate,
        policy: params.policy,
      );
}
