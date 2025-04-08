import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTimeIntevalByTaskIdsAndDateRangeUsecase extends UseCaseWithParams<
    TaskActivityRepository,
    List<TaskActivityEntity>,
    GetByTaskIdsAndDateRangeParams> {
  GetTimeIntevalByTaskIdsAndDateRangeUsecase(super.repository);

  @override
  EResultFuture<List<TaskActivityEntity>> call(
    GetByTaskIdsAndDateRangeParams params,
  ) async =>
      repository.getTaskActivityByTaskIdAndDateRange(params);
}
