import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class CreateBatchInstancesUsecase
    extends UsecaseWithParams<ScheduledInstanceRepository, void, List<ScheduledInstanceEntity>> {
  CreateBatchInstancesUsecase(super.repository);

  @override
  EResultFuture<void> call(List<ScheduledInstanceEntity> params) async =>
      repository.createBatch(params);
}
