import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class DeleteBatchScheduledOccurrencesBySchedulerIdsUseCase
    extends UseCaseWithParams<ScheduledOccurrenceRepository, void, List<String>> {
  DeleteBatchScheduledOccurrencesBySchedulerIdsUseCase(super.repository);

  @override
  EResultFuture<void> call(List<String> params) async => repository.deleteBySchedulerIds(params);
}
