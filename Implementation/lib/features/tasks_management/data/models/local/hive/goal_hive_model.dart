import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';

part 'goal_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.goal) // Unique Type ID for Hive
class GoalHiveModel extends GoalEntity {
  GoalHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.refType,
    required super.refId,
    required super.measurementUnit,
    required super.goalConstraint,
    required super.minutelyTarget,
    required super.hourlyTarget,
    required super.dailyTarget,
    required super.weeklyTarget,
    required super.monthlyTarget,
    required super.yearlyTarget,
    required super.customMeasurementUnitId,
    super.description,
    super.updatedAt,
  });

  /// Creates a `GoalHiveModel` from a `GoalEntity`.
  factory GoalHiveModel.fromEntity(GoalEntity entity) {
    return GoalHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      refType: entity.refType,
      refId: entity.refId,
      customMeasurementUnitId: entity.customMeasurementUnitId,
      goalConstraint: entity.goalConstraint,
      minutelyTarget: entity.minutelyTarget,
      hourlyTarget: entity.hourlyTarget,
      dailyTarget: entity.dailyTarget,
      weeklyTarget: entity.weeklyTarget,
      monthlyTarget: entity.monthlyTarget,
      yearlyTarget: entity.yearlyTarget,
      measurementUnit: entity.measurementUnit,
    );
  }

  /// Creates a copy of the current `GoalHiveModel` with optional updated fields.
  @override
  GoalHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    ReferenceType? refType,
    String? refId,
    MeasurementUnit? measurementUnit,
    String? customMeasurementUnitId,
    GoalConstraint? goalConstraint,
    double? minutelyTarget,
    double? hourlyTarget,
    double? dailyTarget,
    double? weeklyTarget,
    double? monthlyTarget,
    double? yearlyTarget,
  }) {
    return GoalHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      refType: refType ?? this.refType,
      refId: refId ?? this.refId,
      customMeasurementUnitId: customMeasurementUnitId ?? this.customMeasurementUnitId,
      measurementUnit: measurementUnit ?? this.measurementUnit,
      goalConstraint: goalConstraint ?? this.goalConstraint,
      minutelyTarget: minutelyTarget ?? this.minutelyTarget,
      hourlyTarget: hourlyTarget ?? this.hourlyTarget,
      dailyTarget: dailyTarget ?? this.dailyTarget,
      weeklyTarget: weeklyTarget ?? this.weeklyTarget,
      monthlyTarget: monthlyTarget ?? this.monthlyTarget,
      yearlyTarget: yearlyTarget ?? this.yearlyTarget,
    );
  }
}
