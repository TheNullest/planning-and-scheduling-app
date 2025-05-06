import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetBatchInstanceBySchedulerUsecase extends UsecaseWithParams<ScheduledInstanceRepository,
    List<ScheduledInstanceEntity>, List<String>> {
  GetBatchInstanceBySchedulerUsecase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(List<String> params) async =>
      repository.getBatchScheduledInstancesBySchedulerIds(params);
}
