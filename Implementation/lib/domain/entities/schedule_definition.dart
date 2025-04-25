import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Represents the scheduling definition for a task, including repetition patterns
/// and additional custom scheduling rules.
///
/// This entity defines all aspects of how a task is scheduled, such as whether it repeats weekly,
/// on specific days of the month, or according to custom-defined intervals. It incorporates both
/// standard scheduling logic (e.g., weekdays, time ranges) and advanced customization (e.g., specific
/// scheduled days or intervals).
///
/// ## Example Usage
/// ```dart
/// final scheduleDefinition = ScheduleDefinitionEntity(
///   id: 'schedule_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Weekly and interval-based schedule',
///   taskId: 'task_123',
///   scheduledDateRange: DateRange(
///     start: DateTime(2025, 1, 1),
///     end: DateTime(2025, 12, 31),
///   ),
///   repetitionType: RepetitionType.weekly,
///   repeats: 10,
///   times: [
///     TimeRange(
///       start: DateTime(2025, 1, 1, 9),
///       end: DateTime(2025, 1, 1, 12),
///     ),
///   ],
///   weekDays: [WeekDay.monday, WeekDay.friday],
///   monthDays: [1, 15],
///   customScheduledDays: [
///     CustomScheduledDayEntity(
///       id: 'custom_001',
///       userId: 'user_001',
///       createdAt: DateTime.now(),
///       updatedAt: DateTime.now(),
///       description: 'Custom schedule on Sundays',
///       taskId: 'task_123',
///       scheduleDefinitionId: 'schedule_001',
///       dayType: DayType.weekDay,
///       dayValue: 'sunday',
///       timeRanges: [
///         TimeRange(
///           start: TimeOfDay(hour: 10, minute: 0),
///           end: TimeOfDay(hour: 12, minute: 0),
///         ),
///       ],
///       canRepeat: true,
///     ),
///   ],
///   scheduledIntervals: [
///     ScheduledIntervalEntity(
///       id: 'interval_001',
///       userId: 'user_001',
///       createdAt: DateTime.now(),
///       updatedAt: DateTime.now(),
///       description: 'Interval schedule every 3 days',
///       scheduleDefinitionId: 'schedule_001',
///       intervalUnit: IntervalUnit.days,
///       intervalValue: 3,
///       timeRanges: [
///         TimeRange(
///           start: DateTime(2025, 1, 1, 9),
///           end: DateTime(2025, 1, 1, 11),
///         ),
///       ],
///       repeatCount: 5,
///     ),
///   ],
/// );
/// ```

class ScheduleDefinitionEntity extends BaseEntityAbstraction {
  /// Constructs a [ScheduleDefinitionEntity] with the given parameters.
  ///
  /// - [taskId]: The ID of the main task associated with this schedule.
  /// - [scheduledDateRange]: Defines the start and end dates for the schedule.
  /// - [repetitionType]: Specifies how the schedule repeats (e.g., weekly, daily).
  /// - [repeatCount]: The number of times the task repeats.
  /// - [scheduledTimes]: The list of time ranges when the task occurs.
  /// - [weekDays]: Specifies the weekdays for the schedule.
  /// - [monthDays]: Specifies the days of the month for the schedule.
  /// - [scheduledDays]: Advanced customization for specific scheduled days.
  /// - [scheduledIntervals]: Interval-based scheduling for tasks.
  ScheduleDefinitionEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required this.taskId,
    required this.repetitionType,
    required this.repeatCount,
    required this.scheduledTimes,
    required this.weekDays,
    required this.monthDays,
    required this.scheduledDays,
    required this.scheduledIntervals,
    this.scheduledDateRange,
  });

  /// The [taskId] of the main task associated with this schedule.
  @HiveField(11)
  final String taskId;

  /// The [scheduledDateRange] during which the schedule is active.
  ///
  /// This object encapsulates both the start and end times for the schedule.
  @HiveField(12)
  final DateRangeEntity? scheduledDateRange;

  /// The time ranges during which the task should occur.
  ///
  /// Example: A time range from 9 AM to 12 PM on Monday and Friday.
  @HiveField(14)
  final List<TimeRangeEntity> scheduledTimes;

  /// Defines how the schedule repeats, using the [RepetitionType] enum.
  ///
  /// Example values: weekly, daily, monthly, custom, etc.
  @HiveField(13)
  final RepetitionType repetitionType;

  /// The number of times the task repeats within the schedule.
  ///
  /// Example: A weekly schedule with [repeatCount] = 5 will repeat 5 times.
  @HiveField(15)
  final int repeatCount;

  /// The specific weekdays for scheduling the task.
  ///
  /// Example: [WeekDay.monday, WeekDay.friday].
  @HiveField(16)
  final List<WeekDay> weekDays;

  /// The specific days of the month for scheduling the task.
  ///
  /// Example: The 1st and 15th days of the month.
  @HiveField(17)
  final List<int> monthDays;

  /// Advanced custom scheduling logic for specific days.
  ///
  /// Contains user-defined rules for particular days (e.g., Sundays from 10 AM to 12 PM).
  @HiveField(18)
  final List<ScheduledDayEntity> scheduledDays;

  /// Interval-based scheduling logic.
  ///
  /// Example: "Every 3 days from 9 AM to 11 AM".
  @HiveField(19)
  final List<ScheduledIntervalEntity> scheduledIntervals;

  /// Returns a modified copy of this [ScheduleDefinitionEntity].
  ///
  /// Any provided parameters will override the current instance's values.
  @override
  ScheduleDefinitionEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    String? taskId,
    DateRangeEntity? scheduledDateRange,
    RepetitionType? repetitionType,
    int? repeatCount,
    List<WeekDay>? weekDays,
    List<int>? monthDays,
    List<TimeRangeEntity>? scheduledTimes,
    List<ScheduledDayEntity>? scheduledDays,
    List<ScheduledIntervalEntity>? scheduledIntervals,
  }) {
    return ScheduleDefinitionEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      taskId: taskId ?? this.taskId,
      scheduledDateRange: scheduledDateRange ?? this.scheduledDateRange,
      repetitionType: repetitionType ?? this.repetitionType,
      repeatCount: repeatCount ?? this.repeatCount,
      scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
      weekDays: weekDays ?? List.from(this.weekDays),
      monthDays: monthDays ?? List.from(this.monthDays),
      scheduledDays: scheduledDays ?? List.from(this.scheduledDays),
      scheduledIntervals: scheduledIntervals ?? List.from(this.scheduledIntervals),
    );
  }

  /// Equality comparison properties.
  ///
  /// Includes all properties that define the schedule for equality checks.
  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        scheduledDateRange,
        repetitionType,
        repeatCount,
        scheduledTimes,
        weekDays,
        monthDays,
        scheduledDays,
        scheduledIntervals,
      ];
}
