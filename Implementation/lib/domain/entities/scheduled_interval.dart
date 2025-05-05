import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Represents an interval-based scheduling configuration.
///
/// This entity defines how often a task repeats within specified intervals
/// (e.g., every 3 days or every 2 hours) and includes details about the
/// scheduled times and repetition count.
///
/// **Example Usage:**
/// ```dart
/// final scheduledInterval = ScheduledIntervalEntity(
///   id: 'interval_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Do the task every 3 days based on scheduled times',
///   scheduleConstraintsId: 'schedule_001',
///   intervalUnit: IntervalUnit.days,
///   intervalValue: 3,
///   timeRanges: [
///     TimeRange(start: DateTime(2025, 5, 1, 9, 0), end: DateTime(2025, 5, 1, 12, 0)),
///     TimeRange(start: DateTime(2025, 5, 3, 14, 0), end: DateTime(2025, 5, 3, 16, 0)),
///   ],
///   repeatCount: 5,
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
    super.description,
    super.updatedAt,
  });

  /// Constructs a [ScheduledIntervalEntity] with the given properties.
  ///
  /// - [scheduleConstraintId]: The ID of the schedule definition to which this interval belongs.
  /// - [intervalUnit]: The unit of time for the interval (e.g., hours, days).
  /// - [intervalValue]: The numeric value of the interval (e.g., every 3 days).
  /// - [scheduledTimeIds]: The time ranges within the interval when the task should occur.
  /// - [repeatCount]: Specifies how many times the interval repeats.

  /// The ID of the schedule definition associated with this interval.
  final String scheduleConstraintId;

  /// The unit of time for the interval (e.g., hours, days, weeks, months).
  final IntervalUnit intervalUnit;

  /// The numeric value of the interval, defining how often the task repeats (e.g., every 3 days).
  final double intervalValue;

  /// Specifies how many times the interval repeats.
  final int? repeatCount;

  /// The time ranges when the task should occur within the interval.
  ///
  /// Each [TimeRangeEntity] specifies the start and end times for scheduled occurrences.
  final List<String> scheduledTimeIds;

  final bool enforceScheduleBounds;

  final DateTime startDate;

  /// Creates a modified copy of this [ScheduledIntervalEntity].
  ///
  /// Any provided values will replace the corresponding properties.
  /// If a property is omitted, the original value is retained.
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
      repeatCount: repeatCount ?? this.repeatCount,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      startDate: startDate ?? this.startDate,
      scheduledTimeIds: scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Avoid reference sharing
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
      ];
}
