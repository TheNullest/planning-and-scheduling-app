import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';

/// Represents the scheduling definition for a task, including repetition patterns
/// and additional custom scheduling rules.
///
/// This entity defines all aspects of how a task is scheduled, such as whether it repeats weekly,
/// on specific days of the month, or according to custom-defined intervals. It incorporates both
/// standard scheduling logic (e.g., weekdays, time ranges) and advanced customization (e.g., specific
/// scheduled days or intervals).

class ScheduleConstraintsEntity extends BaseEntityAbstraction {
  /// Constructs a [ScheduleConstraintsEntity] with the given parameters.
  ///
  /// - [taskId]: The ID of the main task associated with this schedule.
  /// - [startDate]: Defines the start and end dates for the schedule.
  ScheduleConstraintsEntity({
    required super.userId,
    required super.createdAt,
    required super.description,
    required this.taskId,
    required this.enforceScheduleBounds,
    required this.exceptionDates,
    required this.exceptionWeekDays,
    required this.exceptionMonthDays,
    required super.id, super.updatedAt,
    this.startDate,
    this.endDate,
  });

  /// The [taskId] of the main task associated with this schedule.
  final String taskId;

  /// The [startDate] during which the schedule is active.
  ///
  /// This object encapsulates both the start and end times for the schedule.
  final DateTime? startDate;

  final DateTime? endDate;

  final List<DateTime> exceptionDates;

  final List<WeekDay> exceptionWeekDays;
  final List<int> exceptionMonthDays;

  final bool enforceScheduleBounds;

  /// Returns a modified copy of this [ScheduleConstraintsEntity].
  ///
  /// Any provided parameters will override the current instance's values.
  @override
  ScheduleConstraintsEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    String? taskId,
    DateTime? startDate,
    DateTime? endDate,
    List<DateTime>? exceptionDates,
    List<WeekDay>? exceptionWeekDays,
    List<int>? exceptionMonthDays,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintsEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      taskId: taskId ?? this.taskId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      exceptionDates: exceptionDates ?? List.from(this.exceptionDates),
      exceptionWeekDays: exceptionWeekDays ?? List.from(this.exceptionWeekDays),
      exceptionMonthDays: exceptionMonthDays ?? List.from(this.exceptionMonthDays),
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }

  /// Equality comparison properties.
  ///
  /// Includes all properties that define the schedule for equality checks.
  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        startDate,
        enforceScheduleBounds,
        exceptionWeekDays,
        exceptionMonthDays,
        exceptionDates,
      ];
}
