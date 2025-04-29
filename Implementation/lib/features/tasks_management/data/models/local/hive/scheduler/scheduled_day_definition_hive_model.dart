import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_day_definition.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';

part 'scheduled_day_definition_hive_model.g.dart';

/// A Hive model for storing a custom scheduled day.
///
/// This model extends [ScheduledDayDefinitionEntity] and is used to serialize/deserialize
/// custom scheduled day data for Hive database storage.
///
/// A custom scheduled day defines the scheduling for a task based on either
/// a weekday or a day of the month, along with specific time ranges and a repetition flag.
///
/// ## Example Usage:
/// ```dart
/// // Converting an entity to its Hive model representation:
/// final entity = ScheduledDayDefinitionEntity(
///   id: 'csd_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Custom scheduled day on Sunday',
///   scheduleDefinitionId: 'sch_001',
///   dayType: DayType.weekDay,
///   dayValue: 'sunday',
///   scheduledTimes: [TimeRange(start: TimeOfDay(hour: 10, minute: 0), end: TimeOfDay(hour: 12, minute: 0))],
///   canRepeat: true,
/// );
///
/// final hiveModel = ScheduledDayDefinitionHiveModel.fromEntity(entity);
///
/// // Creating a modified copy:
/// final updatedHiveModel = hiveModel.copyWith(
///   dayValue: 'monday',
/// );
/// ```
@HiveType(typeId: ClassHiveTypeIds.scheduledDayDefinition) // Unique Type ID for Hive
class ScheduledDayDefinitionHiveModel extends ScheduledDayDefinitionEntity {
  ScheduledDayDefinitionHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.scheduleDefinitionId,
    required super.dayType,
    required super.dayValue,
    required super.scheduledTimeIds,
    required super.canRepeat,
    required super.enforceScheduleBounds,
    super.description,
    super.updatedAt,
  });

  /// Creates a [ScheduledDayDefinitionHiveModel] from a corresponding entity.
  ///
  /// This factory method maps each property from the [ScheduledDayDefinitionEntity]
  /// to the Hive model.
  factory ScheduledDayDefinitionHiveModel.fromEntity(ScheduledDayDefinitionEntity entity) {
    return ScheduledDayDefinitionHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      scheduleDefinitionId: entity.scheduleDefinitionId,
      dayType: entity.dayType,
      dayValue: entity.dayValue,
      scheduledTimeIds: entity.scheduledTimeIds,
      canRepeat: entity.canRepeat,
      enforceScheduleBounds: entity.enforceScheduleBounds,
    );
  }

  /// Returns a new instance of [ScheduledDayDefinitionHiveModel] with modified values.
  ///
  /// Any parameter not provided in the [copyWith] call will default to the current
  /// instance's value. This helps in preserving immutability.
  @override
  ScheduledDayDefinitionHiveModel copyWith({
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
    return ScheduledDayDefinitionHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleDefinitionId: parentId ?? scheduleDefinitionId,
      dayType: dayType ?? this.dayType,
      dayValue: dayValue ?? this.dayValue,
      scheduledTimeIds: scheduledTimeIds ?? List.from(this.scheduledTimeIds),
      canRepeat: canRepeat ?? this.canRepeat,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }
}
