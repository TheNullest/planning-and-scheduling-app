import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class DeleteBatchScheduledOccurrencesByTaskIdUseCase
    extends UseCaseWithParams<ScheduledOccurrenceRepository, void, String> {
  DeleteBatchScheduledOccurrencesByTaskIdUseCase(super.repository);

  @override
  EResultFuture<void> call(String params) async => repository.deleteByTaskId(params);
}
