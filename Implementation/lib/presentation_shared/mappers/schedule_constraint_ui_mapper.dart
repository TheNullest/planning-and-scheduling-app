import 'package:zamaan/features/tasks_management/presentation/models/date_range_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/schedule_constraint_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/date_range_ui_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_ui_mapper.dart';
import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

class ScheduleConstraintUIMapper extends BaseUIMapper<ScheduleConstraintUI, String> {
  ScheduleConstraintUIMapper({
    required this.taskId,
    this.scheduledTimeUIs,
    this.exceptionTimeUIs,
    this.exceptionDateUIs,
    this.userUIs,
  });

  final List<List<TimeRangeUI>>? scheduledTimeUIs;
  final List<List<TimeRangeUI>>? exceptionTimeUIs;
  final List<List<DateRangeUI>>? exceptionDateUIs;
  final List<UserUI?>? userUIs;
  final String taskId;

  @override
  String toEntity(ScheduleConstraintUI model) {
    row++;
    return String(
      id: model.id!,
      userId: model.userId!,
      createdAt: model.createdAt!,
      description: model.description,
      taskId: taskId,
      enforceScheduleBounds: model.enforceScheduleBounds,
      exceptionDateIds:
          exceptionDateUIs![row].map((item) => DateRangeUIMapper().toEntity(item)).toList(),
      exceptionTimeIds:
          exceptionTimeUIs![row].map((item) => TimeRangeUIMapper().toEntity(item)).toList(),
    );
  }

  @override
  ScheduleConstraintUI toUIModel(String entity) {
    row++;
    return ScheduleConstraintUI.fromEntity(
      entity: entity,
      scheduledTimes: scheduledTimeUIs![row],
      exceptionTimes: exceptionTimeUIs![row],
      exceptionDates: exceptionDateUIs![row],
    );
  }
}
