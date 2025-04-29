import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_interval_definition.dart';
import 'package:zamaan/presentation_shared/enums/interval_unit.dart';

part 'scheduled_interval_definition_hive_model.g.dart';

/// Represents an interval-based scheduling configuration for tasks, which is stored in Hive.
///
/// This model extends [ScheduledIntervalDefinitionEntity] and is used to persist interval-based scheduling data.
/// It defines how often a task should execute (e.g., every 3 days) along with its specific time ranges
/// and repeat count.
///
/// ## Example Usage:
/// ```dart
/// // Convert an entity instance to a Hive model:
/// final entity = ScheduledIntervalDefinitionEntity(
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
/// final hiveModel = ScheduledIntervalDefinitionHiveModel.fromEntity(entity);
///
/// // Create a modified copy of the Hive model:
/// final updatedHiveModel = hiveModel.copyWith(repeatCount: 7);
/// ```
///
/// This model is essential for storing scheduled interval configurations with Hive.
@HiveType(typeId: ClassHiveTypeIds.scheduledIntervalDefinition) // Unique Type ID for Hive
class ScheduledIntervalDefinitionHiveModel extends ScheduledIntervalDefinitionEntity {
  ScheduledIntervalDefinitionHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.scheduleDefinitionId,
    required super.intervalUnit,
    required super.intervalValue,
    required super.scheduledTimeIds,
    required super.timeExceptionIds,
    required super.dateExceptionIds,
    required super.enforceScheduleBounds,
    super.repeatCount,
    super.updatedAt,
    super.description,
  });

  /// Creates a [ScheduledIntervalDefinitionHiveModel] from a [ScheduledIntervalDefinitionEntity].
  ///
  /// This factory method converts a domain entity into its corresponding Hive model
  /// suitable for persistence.
  factory ScheduledIntervalDefinitionHiveModel.fromEntity(
    ScheduledIntervalDefinitionEntity entity,
  ) {
    return ScheduledIntervalDefinitionHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      scheduleDefinitionId: entity.scheduleDefinitionId,
      intervalUnit: entity.intervalUnit,
      intervalValue: entity.intervalValue,
      scheduledTimeIds: entity.scheduledTimeIds,
      repeatCount: entity.repeatCount,
      dateExceptionIds: entity.dateExceptionIds,
      timeExceptionIds: entity.timeExceptionIds,
      enforceScheduleBounds: entity.enforceScheduleBounds,
    );
  }

  /// Returns a new instance of [ScheduledIntervalDefinitionHiveModel] with updated values.
  ///
  /// Any parameter not provided retains its current value.
  /// This method supports immutability by creating a modified copy of the instance.
  @override
  @override
  ScheduledIntervalDefinitionHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? scheduleDefinitionId,
    IntervalUnit? intervalUnit,
    double? intervalValue,
    int? repeatCount,
    List<String>? scheduledTimeIds,
    List<String>? timeExceptionIds,
    List<String>? dateExceptionIds,
    bool? enforceScheduleBounds,
  }) {
    return ScheduledIntervalDefinitionHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleDefinitionId: scheduleDefinitionId ?? this.scheduleDefinitionId,
      intervalUnit: intervalUnit ?? this.intervalUnit,
      intervalValue: intervalValue ?? this.intervalValue,
      repeatCount: repeatCount ?? this.repeatCount,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      scheduledTimeIds:
          scheduledTimeIds ?? List.from(this.scheduledTimeIds), // Avoid reference sharing
      timeExceptionIds: timeExceptionIds ?? List.from(this.timeExceptionIds),
      dateExceptionIds: dateExceptionIds ?? List.from(this.dateExceptionIds),
    );
  }
}
