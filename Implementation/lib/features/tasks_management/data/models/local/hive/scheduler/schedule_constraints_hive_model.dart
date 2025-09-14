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
    required this.startDate,
    required this.endDate,
    required this.exceptionWeekDays,
    required this.exceptionMonthDays,
    required this.exceptionDates,
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
      startDate: entity.startDate,
      endDate: entity.endDate,
      enforceScheduleBounds: entity.enforceScheduleBounds,
      exceptionDates: entity.exceptionDates,
      exceptionWeekDays: entity.exceptionWeekDays,
      exceptionMonthDays: entity.exceptionMonthDays,
    );
  }

  /// The [taskId] of the main task associated with this schedule.
  @HiveField(11)
  final String taskId;

  /// The [startDate] during which the schedule is active.
  ///
  /// This object encapsulates both the start and end times for the schedule.
  @HiveField(12)
  final DateTime? startDate;

  @HiveField(13)
  final DateTime? endDate;

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
  final List<DateTime> exceptionDates;

  ScheduleConstraintsEntity get toEntity => ScheduleConstraintsEntity(
        id: id,
        userId: userId,
        createdAt: createdAt,
        description: description,
        updatedAt: updatedAt,
        taskId: taskId,
        startDate: startDate,
        endDate: endDate,
        exceptionDates: List.from(exceptionDates),
        enforceScheduleBounds: enforceScheduleBounds,
        exceptionMonthDays: List.from(exceptionMonthDays),
        exceptionWeekDays: List.from(exceptionWeekDays),
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
    DateTime? startDate,
    DateTime? endDate,
    RepetitionType? repetitionType,
    int? repeatCount,
    List<WeekDay>? weekDays,
    List<int>? monthDays,
    List<String>? scheduledTimeIds,
    List<String>? timeRangeExceptionIds,
    List<String>? dateRangeExceptionIds,
    List<int>? exceptionTimes,
    List<DateTime>? exceptionDates,
    List<WeekDay>? exceptionWeekDays,
    List<int>? exceptionMonthDays,
    bool? enforceScheduleBounds,
  }) {
    return ScheduleConstraintsHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
      exceptionWeekDays: exceptionWeekDays ?? List.from(this.exceptionWeekDays),
      exceptionMonthDays: exceptionMonthDays ?? List.from(this.exceptionMonthDays),
      exceptionDates: exceptionDates ?? List.from(this.exceptionDates),
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        startDate,
        exceptionMonthDays,
        exceptionWeekDays,
        exceptionMonthDays,
        enforceScheduleBounds,
        exceptionDates,
      ];
}
