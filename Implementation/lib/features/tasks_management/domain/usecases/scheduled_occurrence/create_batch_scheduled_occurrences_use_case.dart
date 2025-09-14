import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class CreateBatchScheduledOccurrencesUseCase
    extends UseCaseWithParams<ScheduledOccurrenceRepository, void, List<ScheduledOccurrenceEntity>> {
  CreateBatchScheduledOccurrencesUseCase(super.repository);

  @override
  EResultFuture<void> call(List<ScheduledOccurrenceEntity> params) async =>
      repository.createBatch(params);
}
