import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';

part 'scheduled_day_hive_model.g.dart';

/// A Hive model for storing a custom scheduled day.
///
/// This model extends [ScheduledDayEntity] and is used to serialize/deserialize
/// custom scheduled day data for Hive database storage.
///
/// A custom scheduled day defines the scheduling for a task based on either
/// a weekday or a day of the month, along with specific time ranges and a repetition flag.
///
/// ## Example Usage:
/// ```dart
/// // Converting an entity to its Hive model representation:
/// final entity = ScheduledDayEntity(
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
/// final hiveModel = ScheduledDayHiveModel.fromEntity(entity);
///
/// // Creating a modified copy:
/// final updatedHiveModel = hiveModel.copyWith(
///   dayValue: 'monday',
/// );
/// ```
@HiveType(typeId: 109)
class ScheduledDayHiveModel extends ScheduledDayEntity {
  ScheduledDayHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.scheduleDefinitionId,
    required super.dayType,
    required super.dayValue,
    required super.scheduledTimes,
    required super.canRepeat,
  });

  /// Creates a [ScheduledDayHiveModel] from a corresponding entity.
  ///
  /// This factory method maps each property from the [ScheduledDayEntity]
  /// to the Hive model.
  factory ScheduledDayHiveModel.fromEntity(ScheduledDayEntity entity) {
    return ScheduledDayHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      scheduleDefinitionId: entity.scheduleDefinitionId,
      dayType: entity.dayType,
      dayValue: entity.dayValue,
      scheduledTimes: entity.scheduledTimes,
      canRepeat: entity.canRepeat,
    );
  }

  /// Returns a new instance of [ScheduledDayHiveModel] with modified values.
  ///
  /// Any parameter not provided in the [copyWith] call will default to the current
  /// instance's value. This helps in preserving immutability.
  @override
  ScheduledDayHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? scheduleDefinitionId,
    DayType? dayType,
    String? dayValue,
    List<TimeRangeEntity>? scheduledTimes,
    bool? canRepeat,
  }) {
    return ScheduledDayHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      scheduleDefinitionId: scheduleDefinitionId ?? this.scheduleDefinitionId,
      dayType: dayType ?? this.dayType,
      dayValue: dayValue ?? this.dayValue,
      scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
      canRepeat: canRepeat ?? this.canRepeat,
    );
  }
}
