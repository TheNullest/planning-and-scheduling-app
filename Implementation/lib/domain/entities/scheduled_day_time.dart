import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Defines a specific day-time pattern for task scheduling within a schedule definition.
///
/// This entity represents a user's choice to schedule tasks on specific days (weekdays or month days)
/// with optional time constraints. It captures the precise day-time combinations that should
/// generate concrete [ScheduledOccurrenceEntity] instances.
///
/// ## Usage Context:
/// - Created when users want to specify exact days and times for task scheduling
/// - Used by the scheduler to generate concrete task occurrences
/// - Supports both weekday patterns ("every Monday") and month day patterns ("15th of each month")
///
/// ## Time Storage:
/// - [startTime] and [endTime] store minutes from midnight (0-1439)
/// - Null values indicate no time constraint for that boundary
/// - Efficient for database storage and time calculations
class ScheduledDayTimeEntity extends BaseEntityAbstraction {
  /// Constructs a [ScheduledDayTimeEntity] defining a specific day-time pattern for task scheduling.
  ///
  /// This constructor creates a entity that specifies when tasks should occur based on:
  /// - Day type (weekday vs. month day) and specific day label
  /// - Time constraints or all-day availability
  /// - Repetition frequency within the schedule
  ///
  /// ## Parameters:
  /// - [id]: Unique identifier for this day-time pattern (auto-generated if not provided)
  /// - [userId]: Owner of this scheduling pattern
  /// - [createdAt]: When this pattern was originally created
  /// - [taskId]: Reference to the parent schedule definition that contains this pattern
  /// - [dayType]: Whether this pattern uses weekday or month-day logic ([DayType.weekDay] or [DayType.monthDay])
  /// - [dayLabel]: Specific day identifier based on [dayType]:
  ///   - For weekdays: English lowercase name (e.g., "monday", "tuesday")
  ///   - For month days: String number (e.g., "1", "15", "31")
  /// - [timeMode]: When `true`, task can be done at any time during the day, ignoring [startTime] and [endTime]
  /// - [repeatCount]: Frequency interval for repeating this pattern (e.g., 1 = every match, 2 = every second match)
  /// - [description]: Optional notes about this day-time pattern
  /// - [startTime]: Start time in minutes from midnight (0-1439), or `null` for no start constraint
  /// - [endTime]: End time in minutes from midnight (0-1439), or `null` for no end constraint
  /// - [updatedAt]: When this pattern was last modified (auto-updated on changes)
  ///
  /// ## Validation:
  /// - [repeatCount] must be ≥ 1
  /// - [startTime] and [endTime] must be between 0-1439 when provided
  /// - If both [startTime] and [endTime] are provided, [startTime] must be ≤ [endTime]
  /// - [dayLabel] must match the expected format for the specified [dayType]
  ///
  /// ## Example:
  /// ```dart
  /// // Every Monday from 9 AM to 5 PM
  /// ScheduledDayTimeEntity(
  ///   taskId: 'weekly-schedule-123',
  ///   dayType: DayType.weekDay,
  ///   dayLabel: 'monday',
  ///   allowAllDay: false,
  ///   repeatCount: 1,
  ///   startTime: 9 * 60,  // 9:00 AM
  ///   endTime: 17 * 60,   // 5:00 PM
  ///   // ... other required fields
  /// );
  /// ```
  ScheduledDayTimeEntity({
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.dayType,
    required this.dayLabel,
    required this.timeMode,
    required this.repeatCount,
    required super.description,
    required this.startTime,
    required this.endTime,
    required super.id, super.updatedAt,
  });

  /// Reference to the parent schedule definition.
  final String taskId;

  /// Determines whether this schedule uses weekday or month-day logic.
  final DayType dayType;

  /// String representation of either:
  /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
  /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
  final String dayLabel;

  /// it's not improtant to start when on the day if the startTime is null
  /// but should done the task before the end time
  final int startTime;

  /// it's not improtant to end when on the day if the endTime is null
  /// there's time to done the task until 24 o'clock of the day
  final int endTime;

  /// even if the start and end time have values could
  final ScheduledTimeMode timeMode;

  /// Specifies whether this schedule repeats on matching days within the parent schedule's date range.
  final int repeatCount;

  /// Creates a modified copy of this [ScheduledDayTimeEntity].
  ///
  /// Any provided parameters will replace the current values. If a parameter is omitted,
  /// the corresponding value from the current instance will be used.
  @override
  ScheduledDayTimeEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? taskId,
    DayType? dayType,
    String? dayLabel,
    int? repeatCount,
    int? startDate,
    int? endDate,
    ScheduledTimeMode? timeMode,
  }) {
    return ScheduledDayTimeEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      dayType: dayType ?? this.dayType,
      dayLabel: dayLabel ?? this.dayLabel,
      timeMode: timeMode ?? this.timeMode,
      repeatCount: repeatCount ?? this.repeatCount,
      startTime: startDate ?? startTime,
      endTime: endDate ?? endTime,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        dayType,
        dayLabel,
        repeatCount,
        timeMode,
        startTime,
        endTime,
      ];
}
