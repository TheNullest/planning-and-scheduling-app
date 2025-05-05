import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/features/tasks_management/presentation/models/date_range_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class ScheduleConstraintUI extends BaseUIModel {
  ScheduleConstraintUI({
    required this.startAt,
    required this.endAt,
    required this.scheduledTimes,
    required this.exceptionTimes,
    required this.exceptionDates,
    required this.enforceScheduleBounds,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory ScheduleConstraintUI.fromEntity({
    required ScheduleConstraintEntity entity,
    required List<TimeRangeUI> scheduledTimes,
    required List<TimeRangeUI> exceptionTimes,
    required List<DateRangeUI> exceptionDates,
    String? userId,
  }) =>
      ScheduleConstraintUI(
        userId: userId,
        endAt: entity.endAt,
        startAt: entity.startAt,
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        exceptionTimes: exceptionTimes,
        exceptionDates: exceptionDates,
        scheduledTimes: scheduledTimes,
        enforceScheduleBounds: entity.enforceScheduleBounds,
      );

  final DateTime? startAt;
  final DateTime? endAt;
  final List<TimeRangeUI> scheduledTimes;
  final List<TimeRangeUI> exceptionTimes;
  final List<DateRangeUI> exceptionDates;
  final bool enforceScheduleBounds;

  @override
  ScheduleConstraintUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startAt,
    DateTime? endAt,
    String? userId,
    List<TimeRangeUI>? scheduledTimes,
    List<TimeRangeUI>? exceptionTimes,
    List<DateRangeUI>? exceptionDates,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      endAt: endAt ?? this.endAt,
      userId: userId ?? this.userId,
      startAt: startAt ?? this.startAt,
      scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
      exceptionTimes: exceptionTimes ?? List.from(this.exceptionTimes),
      exceptionDates: exceptionDates ?? List.from(this.exceptionDates),
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }
}
