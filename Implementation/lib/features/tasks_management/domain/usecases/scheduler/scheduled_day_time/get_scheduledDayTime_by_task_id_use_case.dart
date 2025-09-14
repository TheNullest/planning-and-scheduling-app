import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetScheduledDayTimesByTaskIdUseCase
    extends UseCaseWithParams<ScheduledDayTimeRepository, List<ScheduledDayTimeEntity>, String> {
  GetScheduledDayTimesByTaskIdUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledDayTimeEntity>> call(String params) async =>
      repository.getByTaskId(params);
}
