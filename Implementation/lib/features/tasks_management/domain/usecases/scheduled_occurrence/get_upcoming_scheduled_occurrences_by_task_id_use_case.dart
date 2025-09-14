import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetUpcomingScheduledOccurrencesByTaskIdUseCase extends UseCaseWithParams<
    ScheduledOccurrenceRepository, List<ScheduledOccurrenceEntity>, String> {
  GetUpcomingScheduledOccurrencesByTaskIdUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> call(String params) async =>
      repository.getUpcomingByTaskId(params);
}
