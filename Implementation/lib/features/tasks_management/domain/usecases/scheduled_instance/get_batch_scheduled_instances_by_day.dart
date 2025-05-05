import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetBatchScheduledInstancesByDayUsecase extends UsecaseWithParams<ScheduledInstanceRepository,
    List<ScheduledInstanceEntity>, DateTime> {
  GetBatchScheduledInstancesByDayUsecase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(DateTime params) async =>
      repository.getBatchScheduledInstancesByDay(params);
}
