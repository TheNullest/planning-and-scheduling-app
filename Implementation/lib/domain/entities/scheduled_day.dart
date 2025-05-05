import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';

/// Represents a custom scheduled day with specific time ranges and repetition rules.
///
/// This entity defines a schedule for a task with a specified day, specifying whether it applies
/// to a particular weekday or a day of the month, along with active time ranges
/// and the option to repeat within a defined schedule.
///
class ScheduledDayEntity extends BaseEntityAbstraction {
  ScheduledDayEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.scheduleConstraintId,
    required this.dayType,
    required this.dayValue,
    required this.scheduledTimeIds,
    required this.canRepeat,
    required this.enforceScheduleBounds,
    super.description,
    super.updatedAt,
  });

  /// Constructs a [ScheduledDayEntity] with the given properties.
  ///
  /// - [id]: Unique identifier for this entity.
  /// - [userId]: The user associated with this scheduled day.
  /// - [scheduleConstraintId]: Reference to the parent schedule definition.
  /// - [dayType]: Indicates whether this is a weekday or a day of the month.
  /// - [dayValue]: Specifies the day value (e.g., "sunday" or "15").
  /// - [scheduledTimeIds]: A list of active time periods for the scheduled day.
  /// - [canRepeat]: Determines whether the schedule recurs on subsequent matching days.

  /// Reference to the parent schedule definition.
  final String scheduleConstraintId;

  /// Determines whether this schedule uses weekday or month-day logic.
  final DayType dayType;

  /// String representation of either:
  /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
  /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
  final String dayValue;

  /// A list of time ranges when the task is active on this day.
  ///
  /// Each [TimeRangeEntity] specifies a start and end time for the scheduled task.
  final List<String> scheduledTimeIds;

  /// Specifies whether this schedule repeats on matching days within the parent schedule's date range.
  final bool canRepeat;

  final bool enforceScheduleBounds;

  /// Creates a modified copy of this [ScheduledDayEntity].
  ///
  /// Any provided parameters will replace the current values. If a parameter is omitted,
  /// the corresponding value from the current instance will be used.
  @override
  ScheduledDayEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? scheduleConstraintId,
    DayType? dayType,
    String? dayValue,
    List<String>? scheduledTimeIds,
    bool? canRepeat,
    bool? enforceScheduleBounds,
  }) {
    return ScheduledDayEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
      dayType: dayType ?? this.dayType,
      dayValue: dayValue ?? this.dayValue,
      scheduledTimeIds: scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Avoid reference sharing
      canRepeat: canRepeat ?? this.canRepeat,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        scheduleConstraintId,
        dayType,
        dayValue,
        scheduledTimeIds,
        enforceScheduleBounds,
        canRepeat,
      ];
}
