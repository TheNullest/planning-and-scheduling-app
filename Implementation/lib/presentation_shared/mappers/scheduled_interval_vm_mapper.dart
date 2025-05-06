import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_interval_vm.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class ScheduledIntervalVMMapper extends ViewModelMapper<ScheduledIntervalVM, ScheduledIntervalEntity> {
  @override
  ScheduledIntervalEntity toEntity(ScheduledIntervalVM model) => ScheduledIntervalEntity(
        id: model.id!,
        userId: model.userId!,
        createdAt: model.createdAt!,
        scheduleConstraintId: model.scheduleConstraintId,
        intervalUnit: model.intervalUnit,
        intervalValue: model.intervalValue,
        repeatCount: model.repeatCount,
        scheduledTimeIds: TimeRangeVMMapper().toListIds(model.scheduledTimes),
        enforceScheduleBounds: model.enforceScheduleBounds,
        startDate: model.startDate,
      );

  @override
  ScheduledIntervalVM toVM(ScheduledIntervalEntity entity, {Map<String, dynamic>? relations}) =>
      ScheduledIntervalVM(
        intervalUnit: entity.intervalUnit,
        intervalValue: entity.intervalValue,
        repeatCount: entity.repeatCount,
        scheduledTimes:
            TimeRangeVMMapper().toVMList(relations!['timeRanges'] as List<TimeRangeEntity>),
        startDate: entity.startDate,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        scheduleConstraintId: entity.scheduleConstraintId,
        consecutiveOccurrences: entity.consecutiveOccurrences,
        createdAt: entity.createdAt,
        description: entity.description,
        id: entity.id,
        updatedAt: entity.updatedAt,
        userId: entity.userId,
      );
}
