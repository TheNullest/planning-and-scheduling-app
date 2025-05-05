import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'schedule_constraints_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.scheduleConstraints) // Unique Type ID for Hive
class ScheduleConstraintHiveModel extends BaseEntityAbstraction {
  ScheduleConstraintHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.startAt,
    required this.endAt,
    required this.exceptionWeekDays,
    required this.exceptionMonthDays,
    required this.exceptionTimeIds,
    required this.exceptionDateIds,
    required this.enforceScheduleBounds,
    super.description,
    super.updatedAt,
  });

  ///Creates a `ScheduleDefinitionHiveModel` from a `ScheduleConstraintsEntity`.
  factory ScheduleConstraintHiveModel.fromEntity(ScheduleConstraintEntity entity) {
    return ScheduleConstraintHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      taskId: entity.taskId,
      startAt: entity.startAt,
      endAt: entity.endAt,
      exceptionDateIds: entity.exceptionDateIds,
      exceptionTimeIds: entity.exceptionTimeIds,
      enforceScheduleBounds: entity.enforceScheduleBounds,
      exceptionWeekDays: entity.exceptionWeekDays,
      exceptionMonthDays: entity.exceptionMonthDays,
    );
  }

  /// The [taskId] of the main task associated with this schedule.
  @HiveField(11)
  final String taskId;

  /// The [startAt] during which the schedule is active.
  ///
  /// This object encapsulates both the start and end times for the schedule.
  @HiveField(12)
  final DateTime? startAt;

  @HiveField(13)
  final DateTime? endAt;

  @HiveField(14)
  final bool enforceScheduleBounds;

  /// The specific weekdays for scheduling the task.
  ///
  /// Example: [WeekDay.monday, WeekDay.friday].
  @HiveField(15)
  final List<WeekDay> exceptionWeekDays;

  /// The specific days of the month for scheduling the task.
  ///
  /// Example: The 1st and 15th days of the month.
  @HiveField(16)
  final List<int> exceptionMonthDays;

  @HiveField(17)
  final List<String> exceptionTimeIds;

  @HiveField(18)
  final List<String> exceptionDateIds;

  ScheduleConstraintEntity get toEntity => ScheduleConstraintEntity(
        id: id,
        userId: userId,
        createdAt: createdAt,
        description: description,
        updatedAt: updatedAt,
        taskId: taskId,
        startAt: startAt,
        endAt: endAt,
        exceptionTimeIds: List.from(exceptionTimeIds),
        exceptionDateIds: List.from(exceptionDateIds),
        enforceScheduleBounds: enforceScheduleBounds,
        exceptionMonthDays: List.from(exceptionMonthDays),
        exceptionWeekDays: List.from(exceptionWeekDays),
      );

  /// Creates a copy of the current `ScheduleDefinitionHiveModel` with optional updated fields.
  @override
  ScheduleConstraintHiveModel copyWith({
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
    List<String>? exceptionTimeIds,
    List<String>? exceptionDateIds,
    List<WeekDay>? exceptionWeekDays,
    List<int>? exceptionMonthDays,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      exceptionWeekDays: exceptionWeekDays ?? List.from(this.exceptionWeekDays),
      exceptionMonthDays: exceptionMonthDays ?? List.from(this.exceptionMonthDays),
      exceptionTimeIds: exceptionTimeIds ?? List.from(this.exceptionTimeIds),
      exceptionDateIds: exceptionDateIds ?? List.from(this.exceptionDateIds),
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        startAt,
        exceptionMonthDays,
        exceptionWeekDays,
        exceptionMonthDays,
        enforceScheduleBounds,
        exceptionDateIds,
        exceptionTimeIds,
      ];
}
