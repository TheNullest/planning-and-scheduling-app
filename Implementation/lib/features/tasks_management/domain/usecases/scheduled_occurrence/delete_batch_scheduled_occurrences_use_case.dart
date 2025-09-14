import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteBatchScheduledOccurrencesUseCase
    extends DeleteBatchUseCase<ScheduledOccurrenceRepository> {
  DeleteBatchScheduledOccurrencesUseCase(super.repository);
}
