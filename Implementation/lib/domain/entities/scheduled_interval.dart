import 'package:hive/hive.dart';
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
///   scheduleDefinitionId: 'schedule_001',
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
  /// Constructs a [ScheduledIntervalEntity] with the given properties.
  ///
  /// - [scheduleDefinitionId]: The ID of the schedule definition to which this interval belongs.
  /// - [intervalUnit]: The unit of time for the interval (e.g., hours, days).
  /// - [intervalValue]: The numeric value of the interval (e.g., every 3 days).
  /// - [scheduledTimes]: The time ranges within the interval when the task should occur.
  /// - [repeatCount]: Specifies how many times the interval repeats.
  ScheduledIntervalEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required this.scheduleDefinitionId,
    required this.intervalUnit,
    required this.intervalValue,
    required this.scheduledTimes,
    required this.repeatCount,
  });

  /// The ID of the schedule definition associated with this interval.
  @HiveField(11)
  final String scheduleDefinitionId;

  /// The unit of time for the interval (e.g., hours, days, weeks, months).
  @HiveField(12)
  final IntervalUnit intervalUnit;

  /// The numeric value of the interval, defining how often the task repeats (e.g., every 3 days).
  @HiveField(13)
  final double intervalValue;

  /// Specifies how many times the interval repeats.
  @HiveField(14)
  final int repeatCount;

  /// The time ranges when the task should occur within the interval.
  ///
  /// Each [TimeRangeEntity] specifies the start and end times for scheduled occurrences.
  @HiveField(15)
  final List<TimeRangeEntity> scheduledTimes;

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
    String? scheduleDefinitionId,
    IntervalUnit? intervalUnit,
    double? intervalValue,
    int? repeatCount,
    List<TimeRangeEntity>? scheduledTimes,
  }) {
    return ScheduledIntervalEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleDefinitionId: scheduleDefinitionId ?? this.scheduleDefinitionId,
      intervalUnit: intervalUnit ?? this.intervalUnit,
      intervalValue: intervalValue ?? this.intervalValue,
      repeatCount: repeatCount ?? this.repeatCount,
      scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes), // Avoid reference sharing
    );
  }
}
