import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'schedule_constraints_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.scheduleConstraints) // Unique Type ID for Hive
class ScheduleConstraintsHiveModel extends BaseEntityAbstraction {
  ScheduleConstraintsHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.startAt,
    required this.endAt,
    required this.weekDayExceptions,
    required this.monthDayExceptions,
    required this.timeRangeExceptionIds,
    required this.dateRangeExceptionIds,
    required this.dateExceptions,
    required this.enforceScheduleBounds,
    super.description,
    super.updatedAt,
  });

  ///Creates a `ScheduleDefinitionHiveModel` from a `ScheduleConstraintsEntity`.
  factory ScheduleConstraintsHiveModel.fromEntity(ScheduleConstraintsEntity entity) {
    return ScheduleConstraintsHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      taskId: entity.taskId,
      startAt: entity.startAt,
      endAt: entity.endAt,
      dateRangeExceptionIds: entity.dateRangeExceptionIds,
      timeRangeExceptionIds: entity.timeRangeExceptionIds,
      enforceScheduleBounds: entity.enforceScheduleBounds,
      dateExceptions: entity.dateExceptions,
      weekDayExceptions: entity.weekDayExceptions,
      monthDayExceptions: entity.monthDayExceptions,
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
  final List<WeekDay> weekDayExceptions;

  /// The specific days of the month for scheduling the task.
  ///
  /// Example: The 1st and 15th days of the month.
  @HiveField(16)
  final List<int> monthDayExceptions;

  @HiveField(17)
  final List<String> timeRangeExceptionIds;

  @HiveField(18)
  final List<String> dateRangeExceptionIds;

  @HiveField(19)
  final List<DateTime> dateExceptions;

  ScheduleConstraintsEntity get toEntity => ScheduleConstraintsEntity(
        id: id,
        userId: userId,
        createdAt: createdAt,
        description: description,
        updatedAt: updatedAt,
        taskId: taskId,
        startAt: startAt,
        endAt: endAt,
        timeRangeExceptionIds: List.from(timeRangeExceptionIds),
        dateRangeExceptionIds: List.from(dateRangeExceptionIds),
        dateExceptions: List.from(dateExceptions),
        enforceScheduleBounds: enforceScheduleBounds,
        monthDayExceptions: List.from(monthDayExceptions),
        weekDayExceptions: List.from(weekDayExceptions),
      );

  /// Creates a copy of the current `ScheduleDefinitionHiveModel` with optional updated fields.
  @override
  ScheduleConstraintsHiveModel copyWith({
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
    List<String>? timeRangeExceptionIds,
    List<String>? dateRangeExceptionIds,
    List<int>? timeExceptions,
    List<DateTime>? dateExceptions,
    List<WeekDay>? weekDayExceptions,
    List<int>? monthDayExceptions,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintsHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      weekDayExceptions: weekDayExceptions ?? List.from(this.weekDayExceptions),
      monthDayExceptions: monthDayExceptions ?? List.from(this.monthDayExceptions),
      timeRangeExceptionIds: timeRangeExceptionIds ?? List.from(this.timeRangeExceptionIds),
      dateRangeExceptionIds: dateRangeExceptionIds ?? List.from(this.dateRangeExceptionIds),
      dateExceptions: dateExceptions ?? List.from(this.dateExceptions),
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        startAt,
        monthDayExceptions,
        weekDayExceptions,
        monthDayExceptions,
        enforceScheduleBounds,
        dateRangeExceptionIds,
        timeRangeExceptionIds,
        dateExceptions,
      ];
}
