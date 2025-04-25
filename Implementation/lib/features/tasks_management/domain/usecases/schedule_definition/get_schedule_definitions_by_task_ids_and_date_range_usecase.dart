import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/params/ids_and_date_range_params.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetScheduleDefinitionByTaskIdsAndDateRangeUsecase extends UsecaseWithParams<
    ScheduleDefinitionRepository, List<ScheduleDefinitionEntity>, DynamicWithDateRangeParams<List<String>>> {
  GetScheduleDefinitionByTaskIdsAndDateRangeUsecase(super.repository);

  @override
  EResultFuture<List<ScheduleDefinitionEntity>> call(
    DynamicWithDateRangeParams<List<String>> params,
  ) async =>
      repository.getBatchByTaskIdsAndDateRange(
        taskIds: params.params,
        startAt: params.fromDate,
        dueDate: params.toDate,
      );
}
