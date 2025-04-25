import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'schedule_definition_hive_model.g.dart';

@HiveType(typeId: 5)
class ScheduleDefinitionHiveModel extends ScheduleDefinitionEntity {
  ScheduleDefinitionHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.taskId,
    required super.repetitionType,
    required super.repeatCount,
    required super.scheduledTimes,
    required super.weekDays,
    required super.monthDays,
    required super.scheduledDays,
    required super.scheduledIntervals,
    super.scheduledDateRange,
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
      scheduledDateRange: entity.scheduledDateRange,
      repetitionType: entity.repetitionType,
      repeatCount: entity.repeatCount,
      scheduledTimes: entity.scheduledTimes,
      weekDays: entity.weekDays,
      monthDays: entity.monthDays,
      scheduledDays: entity.scheduledDays,
      scheduledIntervals: entity.scheduledIntervals,
    );
  }

  /// Creates a copy of the current `ScheduleDefinitionHiveModel` with optional updated fields.
  @override
  ScheduleDefinitionHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? taskId,
    DateRangeEntity? scheduledDateRange,
    RepetitionType? repetitionType,
    int? repeatCount,
    List<TimeRangeEntity>? scheduledTimes,
    List<WeekDay>? weekDays,
    List<int>? monthDays,
    List<ScheduledDayEntity>? scheduledDays,
    List<ScheduledIntervalEntity>? scheduledIntervals,
  }) {
    return ScheduleDefinitionHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      scheduledDateRange: scheduledDateRange ?? this.scheduledDateRange,
      repetitionType: repetitionType ?? this.repetitionType,
      repeatCount: repeatCount ?? this.repeatCount,
      scheduledTimes: scheduledTimes ?? this.scheduledTimes,
      weekDays: weekDays ?? List.from(this.weekDays),
      monthDays: monthDays ?? this.monthDays,
      scheduledDays: scheduledDays ?? List.from(this.scheduledDays),
      scheduledIntervals: scheduledIntervals ?? List.from(this.scheduledIntervals),
    );
  }
}
