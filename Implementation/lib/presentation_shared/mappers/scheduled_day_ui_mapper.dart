import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_day_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_ui_mapper.dart';

class ScheduledDayUIMapper extends BaseUIMapper<ScheduledDayUI, ScheduledDayEntity> {
  ScheduledDayUIMapper({required this.scheduledTimeUIs});

  final List<List<TimeRangeUI>>? scheduledTimeUIs;

  @override
  ScheduledDayEntity toEntity(ScheduledDayUI model) {
    row++;
    return ScheduledDayEntity(
      id: model.id!,
      canRepeat: model.canRepeat,
      dayType: model.dayType,
      dayValue: model.dayValue,
      scheduleConstraintId: '',
      userId: model.userId!,
      createdAt: model.createdAt!,
      description: model.description,
      enforceScheduleBounds: model.enforceScheduleBounds,
      scheduledTimeIds:
          model.scheduledTimes.map((item) => TimeRangeUIMapper().toEntity(item)).toList(),
    );
  }

  @override
  ScheduledDayUI toUIModel(ScheduledDayEntity entity) => ScheduledDayUI.fromEntity(
        entity: entity,
        scheduledTimes: scheduledTimeUIs![row],
        userId: entity.userId,
      );
}
