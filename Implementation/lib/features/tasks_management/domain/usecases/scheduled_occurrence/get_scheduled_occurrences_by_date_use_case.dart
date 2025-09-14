import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetScheduledOccurrencesByDateUseCase extends UseCaseWithParams<ScheduledOccurrenceRepository,
    List<ScheduledOccurrenceEntity>, DateTime> {
  GetScheduledOccurrencesByDateUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> call(DateTime params) async =>
      repository.getByDate(params);
}
