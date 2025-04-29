import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'schedule_definition_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.scheduleDefinition) // Unique Type ID for Hive
class ScheduleDefinitionHiveModel extends ScheduleDefinitionEntity {
  ScheduleDefinitionHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.taskId,
    required super.repetitionType,
    required super.repeatCount,
    required super.scheduledTimeIds,
    required super.weekDays,
    required super.monthDays,
    required super.enforceScheduleBounds,
    required super.scheduledDayDefinitionIds,
    required super.scheduledIntervalDefinitionIds,
    super.description,
    super.updatedAt,
    super.startAt,
    super.endAt,
  });

  /// Creates a `ScheduleDefinitionHiveModel` from a `ScheduleDefinitionEntity`.
  factory ScheduleDefinitionHiveModel.fromEntity(ScheduleDefinitionEntity entity) {
    return ScheduleDefinitionHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      taskId: entity.taskId,
      startAt: entity.startAt,
      endAt: entity.endAt,
      repetitionType: entity.repetitionType,
      repeatCount: entity.repeatCount,
      scheduledTimeIds: entity.scheduledTimeIds,
      weekDays: entity.weekDays,
      monthDays: entity.monthDays,
      enforceScheduleBounds: entity.enforceScheduleBounds,
      scheduledDayDefinitionIds: entity.scheduledDayDefinitionIds,
      scheduledIntervalDefinitionIds: entity.scheduledIntervalDefinitionIds,
    );
  }

  /// Creates a copy of the current `ScheduleDefinitionHiveModel` with optional updated fields.
  @override
  ScheduleDefinitionHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    String? taskId,
    DateTime? startAt,
    DateTime? endAt,
    RepetitionType? repetitionType,
    int? repeatCount,
    List<WeekDay>? weekDays,
    List<int>? monthDays,
    List<String>? scheduledTimeIds,
    List<String>? scheduledDayDefinitionIds,
    List<String>? scheduledIntervalDefinitionIds,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleDefinitionHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      repetitionType: repetitionType ?? this.repetitionType,
      repeatCount: repeatCount ?? this.repeatCount,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      scheduledTimeIds: scheduledTimeIds ?? this.scheduledTimeIds,
      weekDays: weekDays ?? List.from(this.weekDays),
      monthDays: monthDays ?? this.monthDays,
      scheduledDayDefinitionIds:
          scheduledDayDefinitionIds ?? List.from(this.scheduledDayDefinitionIds),
      scheduledIntervalDefinitionIds:
          scheduledIntervalDefinitionIds ?? List.from(this.scheduledIntervalDefinitionIds),
    );
  }
}
