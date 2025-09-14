import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class UpdateBatchScheduledOccurrencesUseCase extends UseCaseWithParams<
    ScheduledOccurrenceRepository, void, List<ScheduledOccurrenceEntity>> {
  UpdateBatchScheduledOccurrencesUseCase(super.repository);

  @override
  EResultFuture<void> call(List<ScheduledOccurrenceEntity> params) async =>
      repository.updateBatch(params);
}
