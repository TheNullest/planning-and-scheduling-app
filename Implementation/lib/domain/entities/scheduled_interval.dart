import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';

/// Represents an interval-based scheduling configuration.
///
/// This entity defines how often a task repeats within specified intervals
/// (e.g., every 3 days or every 2 hours) and includes details about the scheduled
/// times, repetition count, and configuration of consecutive occurrences.
///
/// **Example Usage:**
/// ```dart
/// final scheduledInterval = ScheduledIntervalEntity(
///   id: 'interval_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Do the task every 3 days based on scheduled times',
///   scheduleConstraintId: 'schedule_001',
///   intervalUnit: IntervalUnit.days,
///   intervalValue: 3,
///   scheduledTimeIds: [
///     'timeRange_1',
///     'timeRange_2',
///   ],
///   repeatCount: 5,
///   enforceScheduleBounds: true,
///   startDate: DateTime(2025, 5, 1),
///   consecutiveOccurrences: 1,
/// );
/// ```
class ScheduledIntervalEntity extends BaseEntityAbstraction {
  ScheduledIntervalEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.scheduleConstraintId,
    required this.intervalUnit,
    required this.intervalValue,
    required this.repeatCount,
    required this.scheduledTimeIds,
    required this.enforceScheduleBounds,
    required this.startDate,
    this.consecutiveOccurrences = 1,
    super.description,
    super.updatedAt,
  });

  /// The ID of the schedule constraint to which this interval configuration belongs.
  final String scheduleConstraintId;

  /// The unit of time defining the interval (e.g., minute, hour, day, week, month, or year).
  final IntervalUnit intervalUnit;

  /// The magnitude of the interval.
  /// For instance, an intervalValue of 3 with an intervalUnit of days indicates "every 3 days."
  final double intervalValue;

  /// Specifies how many times the interval is intended to repeat.
  /// A null value may indicate an indefinite repetition or be handled by your business logic.
  final int? repeatCount;

  /// The identifiers for the scheduled time ranges within an interval.
  /// Each identifier corresponds to a specific [TimeRangeEntity] where the task should occur.
  final List<String> scheduledTimeIds;

  /// Determines whether the scheduling should strictly adhere to configured schedule bounds.
  final bool enforceScheduleBounds;

  /// The starting date for this scheduling configuration.
  final DateTime startDate;

  /// The number of consecutive occurrences to generate for each computed base date.
  /// For example, a value of 1 means a single occurrence per interval, while a higher value produces multiple consecutive dates.
  final int consecutiveOccurrences;

  /// Creates a modified copy of this [ScheduledIntervalEntity].
  ///
  /// Any provided parameters will replace the corresponding property, while properties not
  /// provided will retain their existing values.
  @override
  ScheduledIntervalEntity copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    DateTime? startDate,
    String? scheduleConstraintId,
    IntervalUnit? intervalUnit,
    double? intervalValue,
    int? consecutiveOccurrences,
    int? repeatCount,
    bool? enforceScheduleBounds,
    List<String>? scheduledTimeIds,
  }) {
    return ScheduledIntervalEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
      intervalUnit: intervalUnit ?? this.intervalUnit,
      intervalValue: intervalValue ?? this.intervalValue,
      consecutiveOccurrences: consecutiveOccurrences ?? this.consecutiveOccurrences,
      repeatCount: repeatCount ?? this.repeatCount,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      startDate: startDate ?? this.startDate,
      scheduledTimeIds:
          scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Creates a new list instance.
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        scheduleConstraintId,
        intervalUnit,
        intervalValue,
        repeatCount,
        enforceScheduleBounds,
        scheduledTimeIds,
        startDate,
        consecutiveOccurrences,
      ];
}
