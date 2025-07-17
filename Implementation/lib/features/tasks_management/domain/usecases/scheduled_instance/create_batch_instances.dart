import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class CreateBatchInstancesUseCase
    extends UseCaseWithParams<ScheduledInstanceRepository, void, List<ScheduledInstanceEntity>> {
  CreateBatchInstancesUseCase(super.repository);

  @override
  EResultFuture<void> call(List<ScheduledInstanceEntity> params) async =>
      repository.createBatch(params);
}
