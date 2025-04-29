import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract class ScheduledInstanceRepository extends BaseRepository<ScheduledInstanceEntity> {
  EResultFuture<List<ScheduledInstanceEntity>> getBatchScheduledInstancesByDay(DateTime day);
}
