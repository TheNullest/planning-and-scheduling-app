import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/presentation_shared/enums/interval_unit.dart';

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
///   scheduleDefinitionId: 'sched_def_001',
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
@HiveType(typeId: 6)
class ScheduledIntervalHiveModel extends ScheduledIntervalEntity {
  ScheduledIntervalHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.scheduleDefinitionId,
    required super.intervalUnit,
    required super.intervalValue,
    required super.repeatCount,
    required super.scheduledTimes,
    required super.timeExceptions,
    required super.dateExceptions,
    super.updatedAt,
    super.description,
  });

  /// Creates a [ScheduledIntervalHiveModel] from a [ScheduledIntervalEntity].
  ///
  /// This factory method converts a domain entity into its corresponding Hive model
  /// suitable for persistence.
  factory ScheduledIntervalHiveModel.fromEntity(ScheduledIntervalEntity entity) {
    return ScheduledIntervalHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      scheduleDefinitionId: entity.scheduleDefinitionId,
      intervalUnit: entity.intervalUnit,
      intervalValue: entity.intervalValue,
      scheduledTimes: entity.scheduledTimes,
      repeatCount: entity.repeatCount,
      dateExceptions: entity.dateExceptions,
      timeExceptions: entity.timeExceptions,
    );
  }

  /// Returns a new instance of [ScheduledIntervalHiveModel] with updated values.
  ///
  /// Any parameter not provided retains its current value.
  /// This method supports immutability by creating a modified copy of the instance.
  @override
  @override
  ScheduledIntervalHiveModel copyWith({
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
    List<TimeRangeEntity>? timeExceptions,
    List<DateRangeEntity>? dateExceptions,
  }) {
    return ScheduledIntervalHiveModel(
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
      timeExceptions: timeExceptions ?? List.from(this.timeExceptions),
      dateExceptions: dateExceptions ?? List.from(this.dateExceptions),
    );
  }
}
