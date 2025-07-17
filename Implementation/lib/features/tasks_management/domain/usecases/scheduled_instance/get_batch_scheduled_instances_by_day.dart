import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetBatchScheduledInstancesByDayUseCase extends UseCaseWithParams<ScheduledInstanceRepository,
    List<ScheduledInstanceEntity>, DateTime> {
  GetBatchScheduledInstancesByDayUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(DateTime params) async =>
      repository.getBatchScheduledInstancesByDay(params);
}
