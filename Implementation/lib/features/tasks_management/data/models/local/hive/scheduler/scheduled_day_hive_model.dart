import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
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
///   scheduleConstraintsId: 'sch_001',
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
@HiveType(typeId: ClassHiveTypeIds.scheduledDay) // Unique Type ID for Hive
class ScheduledDayHiveModel extends BaseEntityAbstraction {
  ScheduledDayHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.dayType,
    required this.dayValue,
    required this.scheduledTimeIds,
    required this.canRepeat,
    required this.enforceScheduleBounds,
    super.description,
    super.updatedAt,
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
      taskId: entity.taskId,
      dayType: entity.dayType,
      dayValue: entity.dayValue,
      scheduledTimeIds: List.from(entity.scheduledTimeIds),
      canRepeat: entity.canRepeat,
      enforceScheduleBounds: entity.enforceScheduleBounds,
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
  final String dayValue;

  /// A list of time ranges when the task is active on this day.
  @HiveField(14)
  final List<String> scheduledTimeIds;

  /// Specifies whether this schedule repeats on matching days within the parent schedule's date range.
  @HiveField(15)
  final bool canRepeat;

  @HiveField(16)
  final bool enforceScheduleBounds;

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
    String? taskId,
    DayType? dayType,
    String? dayValue,
    List<String>? scheduledTimeIds,
    bool? canRepeat,
    bool? enforceScheduleBounds,
  }) {
    return ScheduledDayHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      dayType: dayType ?? this.dayType,
      dayValue: dayValue ?? this.dayValue,
      scheduledTimeIds: scheduledTimeIds ?? List.from(this.scheduledTimeIds),
      canRepeat: canRepeat ?? this.canRepeat,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        dayType,
        dayValue,
        scheduledTimeIds,
        enforceScheduleBounds,
        canRepeat,
      ];
}
