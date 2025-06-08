import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';

part 'scheduled_interval_hive_model.g.dart';

/// Represents an interval-based scheduling configuration for tasks, which is stored in Hive.
///
/// This model extends [ScheduledIntervalEntity] and is used to persist interval-based scheduling data.
/// It defines how often a task should execute (e.g., every 3 days) along with its specific time ranges
/// and repeat count.
///
/// ## Example Usage:
/// ```dart
/// // Convert an entity instance to a Hive model:
/// final entity = ScheduledIntervalEntity(
///   id: 'interval_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Repeat task every 3 days at selected times',
///   scheduleConstraintsId: 'sched_def_001',
///   intervalUnit: IntervalUnit.days,
///   intervalValue: 3,
///   timeRanges: [
///     TimeRange(
///       start: DateTime(2025, 1, 1, 9),
///       end: DateTime(2025, 1, 1, 12),
///     ),
///   ],
///   repeatCount: 5,
/// );
///
/// // Create a Hive model from the entity:
/// final hiveModel = ScheduledIntervalHiveModel.fromEntity(entity);
///
/// // Create a modified copy of the Hive model:
/// final updatedHiveModel = hiveModel.copyWith(repeatCount: 7);
/// ```
///
/// This model is essential for storing scheduled interval configurations with Hive.
@HiveType(typeId: ClassHiveTypeIds.scheduledInterval) // Unique Type ID for Hive
class ScheduledIntervalHiveModel extends BaseEntityAbstraction {
  ScheduledIntervalHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.scheduleConstraintId,
    required this.intervalUnit,
    required this.intervalValue,
    required this.repeatCount,
    required this.scheduledTimeIds,
    required this.enforceScheduleBounds,
    required this.consecutiveOccurrences,
    required this.startDate,
    super.description,
    super.updatedAt,
  });

  /// The ID of the schedule definition associated with this interval.
  @HiveField(11)
  final String scheduleConstraintId;

  /// The unit of time for the interval (e.g., hours, days, weeks, months).
  @HiveField(12)
  final IntervalUnit intervalUnit;

  /// The numeric value of the interval, defining how often the task repeats (e.g., every 3 days).
  @HiveField(13)
  final double intervalValue;

  /// Specifies how many times the interval repeats.
  @HiveField(14)
  final int? repeatCount;

  /// The time ranges when the task should occur within the interval.
  @HiveField(15)
  final List<String> scheduledTimeIds;

  @HiveField(16)
  final bool enforceScheduleBounds;

  @HiveField(17)
  final DateTime startDate;

  @HiveField(18)
  final int consecutiveOccurrences;

  /// Returns a new instance of [ScheduledIntervalHiveModel] with updated values.
  ///
  /// Any parameter not provided retains its current value.
  /// This method supports immutability by creating a modified copy of the instance.
  @override
  ScheduledIntervalHiveModel copyWith({
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
    int? consecutiveOccurrences,
    List<String>? scheduledTimeIds,
    bool? enforceScheduleBounds,
  }) {
    return ScheduledIntervalHiveModel(
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
      consecutiveOccurrences: consecutiveOccurrences ?? this.consecutiveOccurrences,
      scheduledTimeIds:
          scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Avoid reference sharing
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
