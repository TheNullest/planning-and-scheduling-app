import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/goal_entity.dart';

part 'goal_hive_model.g.dart';

@HiveType(typeId: 3) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class GoalHiveModel extends GoalEntity with HiveObjectMixin {
  GoalHiveModel({
    required super.taskId,
    required super.measurementUnitId,
    required super.measurementUnitValue,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.subTaskId,
    super.perActiveHour,
    super.perActiveDay,
    super.perActiveWeek,
    super.perActiveMonth,
    super.perActiveYear,
  });

  // For the purpose of testing
  GoalHiveModel.empty() : super.empty();

  factory GoalHiveModel.fromEntity(GoalEntity entity) => GoalHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        taskId: entity.taskId,
        measurementUnitId: entity.measurementUnitId,
        measurementUnitValue: entity.measurementUnitValue,
        subTaskId: entity.subTaskId,
        perActiveHour: entity.perActiveHour,
        perActiveDay: entity.perActiveDay,
        perActiveWeek: entity.perActiveWeek,
        perActiveMonth: entity.perActiveMonth,
        perActiveYear: entity.perActiveYear,
      );

  @override
  GoalHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? taskId,
    String? measurementUnitId,
    int? measurementUnitValue,
    String? subTaskId,
    double? perActiveHour,
    double? perActiveDay,
    double? perActiveWeek,
    double? perActiveMonth,
    double? perActiveYear,
  }) =>
      GoalHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        subTaskId: subTaskId ?? this.subTaskId,
        measurementUnitId: measurementUnitId ?? this.measurementUnitId,
        measurementUnitValue: measurementUnitValue ?? this.measurementUnitValue,
        perActiveHour: perActiveHour ?? this.perActiveHour,
        perActiveDay: perActiveDay ?? this.perActiveDay,
        perActiveWeek: perActiveWeek ?? this.perActiveWeek,
        perActiveMonth: perActiveMonth ?? this.perActiveMonth,
        perActiveYear: perActiveYear ?? this.perActiveYear,
      );
}
