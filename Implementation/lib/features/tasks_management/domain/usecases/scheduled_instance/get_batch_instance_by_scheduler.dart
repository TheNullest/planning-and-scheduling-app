import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetBatchInstanceBySchedulerUseCase extends UseCaseWithParams<ScheduledInstanceRepository,
    List<ScheduledInstanceEntity>, List<String>> {
  GetBatchInstanceBySchedulerUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(List<String> params) async =>
      repository.getBatchScheduledInstancesBySchedulerIds(params);
}
