import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_day_vm.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class ScheduledDayVMMapper extends ViewModelMapper<ScheduledDayVM, ScheduledDayEntity> {
  @override
  ScheduledDayEntity toEntity(ScheduledDayVM model) {
    return ScheduledDayEntity(
      id: model.id!,
      canRepeat: model.canRepeat,
      dayType: model.dayType,
      dayValue: model.dayValue,
      scheduleConstraintId: model.scheduleConstraintId,
      userId: model.userId!,
      createdAt: model.createdAt!,
      description: model.description,
      enforceScheduleBounds: model.enforceScheduleBounds,
      scheduledTimeIds: model.scheduledTimes.map((item) => item.id!).toList(),
      updatedAt: model.updatedAt,
    );
  }

  @override
  ScheduledDayVM toVM(ScheduledDayEntity entity, {Map<String, dynamic>? relations}) =>
      ScheduledDayVM(
        scheduleConstraintId: entity.scheduleConstraintId,
        dayType: entity.dayType,
        dayValue: entity.dayValue,
        canRepeat: entity.canRepeat,
        scheduledTimes:
            TimeRangeVMMapper().toVMList(relations!['timeRanges'] as List<TimeRangeEntity>),
        enforceScheduleBounds: entity.enforceScheduleBounds,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        id: entity.id,
        description: entity.description,
        userId: entity.userId,
      );
}
