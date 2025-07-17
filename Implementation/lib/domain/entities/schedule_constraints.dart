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
  /// - [startAt]: Defines the start and end dates for the schedule.
  ScheduleConstraintsEntity({
    required super.userId,
    required super.createdAt,
    required super.description,
    required this.taskId,
    required this.enforceScheduleBounds,
    required this.timeRangeExceptionIds,
    required this.dateRangeExceptionIds,
    required this.dateExceptions,
    required this.weekDayExceptions,
    required this.monthDayExceptions,
    super.updatedAt,
    this.startAt,
    this.endAt,
    super.id,
  });

  /// The [taskId] of the main task associated with this schedule.
  final String taskId;

  /// The [startAt] during which the schedule is active.
  ///
  /// This object encapsulates both the start and end times for the schedule.
  final DateTime? startAt;

  final DateTime? endAt;

  final List<String> timeRangeExceptionIds;
  final List<String> dateRangeExceptionIds;

  final List<DateTime> dateExceptions;

  final List<WeekDay> weekDayExceptions;
  final List<int> monthDayExceptions;

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
    DateTime? startAt,
    DateTime? endAt,
    List<String>? timeRangeExceptionIds,
    List<String>? dateRangeExceptionIds,
    List<DateTime>? dateExceptions,
    List<WeekDay>? weekDayExceptions,
    List<int>? monthDayExceptions,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintsEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      taskId: taskId ?? this.taskId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      timeRangeExceptionIds: timeRangeExceptionIds ?? List.from(this.timeRangeExceptionIds),
      dateRangeExceptionIds: dateRangeExceptionIds ?? List.from(this.dateRangeExceptionIds),
      dateExceptions: dateExceptions ?? List.from(this.dateExceptions),
      weekDayExceptions: weekDayExceptions ?? List.from(this.weekDayExceptions),
      monthDayExceptions: monthDayExceptions ?? List.from(this.monthDayExceptions),
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
        startAt,
        enforceScheduleBounds,
        dateRangeExceptionIds,
        timeRangeExceptionIds,
        weekDayExceptions,
        monthDayExceptions,
        dateExceptions,
      ];
}
