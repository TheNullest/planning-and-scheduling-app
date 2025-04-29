import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';

/// Represents a custom scheduled day with specific time ranges and repetition rules.
///
/// This entity defines a schedule for a task with a specified day, specifying whether it applies
/// to a particular weekday or a day of the month, along with active time ranges
/// and the option to repeat within a defined schedule.
///
/// ## Example Usage
/// ```dart
/// final scheduledDayDefinition = ScheduledDayDefinitionEntity(
///   id: 'custom_day_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Sunday schedule',
///   scheduleDefinitionId: 'schedule_def_001',
///   dayType: DayType.weekDay,
///   dayValue: WeekDay.sunday.name, // "sunday"
///   timeRanges: [
///     TimeRange(
///       start: TimeOfDay(hour: 10, minute: 0),
///       end: TimeOfDay(hour: 12, minute: 30),
///     ),
///     TimeRange(
///       start: TimeOfDay(hour: 15, minute: 0),
///       end: TimeOfDay(hour: 17, minute: 0),
///     ),
///   ],
///   canRepeat: true,
/// );
/// ```
///
/// ## Behavior
/// - **[dayType] and [dayValue]:**
///   - When [dayType] is [DayType.weekDay], [dayValue] must correspond to a valid [WeekDay] name (e.g., "monday").
///   - When [dayType] is [DayType.monthDay], [dayValue] must be a stringified integer (e.g., "15").
/// - **[scheduledTimeIds]:**
///   - Specifies the active time periods on the selected day (e.g., 10:00 AM - 12:30 PM).
/// - **Repetition Logic:**
///   - If [canRepeat] is `true`, the task will recur on matching days within the parent [ScheduleDefinitionEntity.startAt].
///   - If [canRepeat] is `false`, the schedule will trigger only once on the first matching day.
///
/// ## Example Behaviors:
/// - **Weekly Schedule:** If [dayType] is `DayType.weekDay` with [dayValue] "sunday" and [canRepeat] `true`,
///   the task will repeat every Sunday during the schedule's date range.
/// - **Monthly Schedule:** If [dayType] is `DayType.monthDay` with [dayValue] "15" and [canRepeat] `false`,
///   the task will only occur on the 15th day of the first applicable month.
class ScheduledDayDefinitionEntity extends BaseEntityAbstraction {
  ScheduledDayDefinitionEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.scheduleDefinitionId,
    required this.dayType,
    required this.dayValue,
    required this.scheduledTimeIds,
    required this.canRepeat,
    required this.enforceScheduleBounds,
    super.description,
    super.updatedAt,
  });

  /// Constructs a [ScheduledDayDefinitionEntity] with the given properties.
  ///
  /// - [id]: Unique identifier for this entity.
  /// - [userId]: The user associated with this scheduled day.
  /// - [scheduleDefinitionId]: Reference to the parent schedule definition.
  /// - [dayType]: Indicates whether this is a weekday or a day of the month.
  /// - [dayValue]: Specifies the day value (e.g., "sunday" or "15").
  /// - [scheduledTimeIds]: A list of active time periods for the scheduled day.
  /// - [canRepeat]: Determines whether the schedule recurs on subsequent matching days.

  /// Reference to the parent schedule definition.
  @HiveField(11)
  final String scheduleDefinitionId;

  /// Determines whether this schedule uses weekday or month-day logic.
  @HiveField(12)
  final DayType dayType;

  /// String representation of either:
  /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
  /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
  @HiveField(13)
  final String dayValue;

  /// A list of time ranges when the task is active on this day.
  ///
  /// Each [TimeRangeEntity] specifies a start and end time for the scheduled task.
  @HiveField(14)
  final List<String> scheduledTimeIds;

  /// Specifies whether this schedule repeats on matching days within the parent schedule's date range.
  @HiveField(15)
  final bool canRepeat;

  @HiveField(16)
  final bool enforceScheduleBounds;

  /// Creates a modified copy of this [ScheduledDayDefinitionEntity].
  ///
  /// Any provided parameters will replace the current values. If a parameter is omitted,
  /// the corresponding value from the current instance will be used.
  @override
  ScheduledDayDefinitionEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? parentId,
    DayType? dayType,
    String? dayValue,
    List<String>? scheduledTimeIds,
    bool? canRepeat,
    bool? enforceScheduleBounds,
  }) {
    return ScheduledDayDefinitionEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleDefinitionId: parentId ?? scheduleDefinitionId,
      dayType: dayType ?? this.dayType,
      dayValue: dayValue ?? this.dayValue,
      scheduledTimeIds:
          scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Avoid reference sharing
      canRepeat: canRepeat ?? this.canRepeat,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }
}
