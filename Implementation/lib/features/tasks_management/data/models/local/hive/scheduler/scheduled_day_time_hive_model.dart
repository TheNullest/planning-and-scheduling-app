import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart';

part 'scheduled_day_time_hive_model.g.dart';

/// A Hive model for storing a custom scheduled day.
///
/// This model extends [ScheduledDayTimeEntity] and is used to serialize/deserialize
/// custom scheduled day data for Hive database storage.
///
/// A custom scheduled day defines the scheduling for a task based on either
/// a weekday or a day of the month, along with specific time ranges and a repetition flag.
///
/// ## Example Usage:
/// ```dart
/// Converting an entity to its Hive model representation:
/// final entity = ScheduledDayTimeEntity(
///   id: 'csd_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Custom scheduled day on Sunday',
///   scheduleConstraintsId: 'sch_001',
///   dayType: DayType.weekDay,
///   dayLabel: 'sunday',
///   scheduledTimes: [TimeRange(start: TimeOfDay(hour: 10, minute: 0), end: TimeOfDay(hour: 12, minute: 0))],
///   canRepeat: true,
/// );
///
/// final hiveModel = ScheduledDayTimeHiveModel.fromEntity(entity);
///
/// Creating a modified copy:
/// final updatedHiveModel = hiveModel.copyWith(
///   dayLabel: 'monday',
/// );
/// ```
@HiveType(typeId: ClassHiveTypeIds.scheduledDayTime) // Unique Type ID for Hive
class ScheduledDayTimeHiveModel extends BaseEntityAbstraction {
  ScheduledDayTimeHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.dayType,
    required this.dayLabel,
    required this.timeMode,
    required this.repeatCount,
    required this.startTime,
    required this.endTime,
    super.description,
    super.updatedAt,
  });

  /// Creates a [ScheduledDayTimeHiveModel] from a corresponding entity.
  ///
  /// This factory method maps each property from the [ScheduledDayTimeEntity]
  /// to the Hive model.
  factory ScheduledDayTimeHiveModel.fromEntity(ScheduledDayTimeEntity entity) {
    return ScheduledDayTimeHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      taskId: entity.taskId,
      dayType: entity.dayType,
      dayLabel: entity.dayLabel,
      startTime: entity.startTime,
      endTime: entity.endTime,
      repeatCount: entity.repeatCount,
      timeMode: entity.timeMode,
    );
  }

  /// Reference to the parent schedule definition.
  @HiveField(11)
  final String taskId;

  /// Determines whether this schedule uses weekday or month-day logic.
  @HiveField(12)
  final DayType dayType;

  /// String representation of either:
  /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
  /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
  @HiveField(13)
  final String dayLabel;

  @HiveField(14)
  final int startTime;

  @HiveField(15)
  final int endTime;

  /// Specifies whether this schedule repeats on matching days within the parent schedule's date range.
  @HiveField(16)
  final int repeatCount;

  @HiveField(17)
  final ScheduledTimeMode timeMode;

  /// Returns a new instance of [ScheduledDayTimeHiveModel] with modified values.
  ///
  /// Any parameter not provided in the [copyWith] call will default to the current
  /// instance's value. This helps in preserving immutability.
  @override
  ScheduledDayTimeHiveModel copyWith(
      {String? id,
      String? userId,
      DateTime? createdAt,
      String? description,
      DateTime? updatedAt,
      String? taskId,
      DayType? dayType,
      String? dayLabel,
      List<String>? scheduledTimeIds,
      int? repeatCount,
      int? startDate,
      int? endDate,
      ScheduledTimeMode? timeMode}) {
    return ScheduledDayTimeHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      dayType: dayType ?? this.dayType,
      dayLabel: dayLabel ?? this.dayLabel,
      repeatCount: repeatCount ?? this.repeatCount,
      timeMode: timeMode ?? this.timeMode,
      startTime: startDate ?? startTime,
      endTime: endDate ?? endTime,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        dayType,
        dayLabel,
        startTime,
        endTime,
        repeatCount,
        timeMode,
      ];
}
