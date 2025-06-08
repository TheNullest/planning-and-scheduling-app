import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';

part 'goal_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.goal) // Unique Type ID for Hive
class GoalHiveModel extends BaseEntityAbstraction {
  GoalHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.refType,
    required this.refId,
    required this.measurementUnit,
    required this.goalConstraint,
    required this.minutelyTarget,
    required this.hourlyTarget,
    required this.dailyTarget,
    required this.weeklyTarget,
    required this.monthlyTarget,
    required this.yearlyTarget,
    required this.customMeasurementUnitId,
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

  /// The type of associated work item (task/sub-task).
  @HiveField(11)
  final ReferenceType refType;

  /// Identifier of the linked task or sub-task.
  @HiveField(12)
  final String refId;

  /// Base unit for measuring progress.
  @HiveField(13)
  final MeasurementUnit? measurementUnit;

  /// Defines whether the goal requires meeting a minimum
  /// or staying below a maximum value.
  @HiveField(14)
  final GoalConstraint goalConstraint;

  /// Required progress amount per active hour as [hourlyTarget].
  /// - Example: 0.5 represents 30 minutes of focused work per hour.
  @HiveField(15)
  final double minutelyTarget;

  /// Required progress amount per active hour as [hourlyTarget].
  /// - Example: 0.5 represents 30 minutes of focused work per hour.
  @HiveField(16)
  final double hourlyTarget;

  /// Daily goal target as [dailyTarget].
  /// - Combines with hourly targets for partial day tracking.
  @HiveField(17)
  final double dailyTarget;

  /// Weekly cumulative target as [weeklyTarget].
  /// - Used for longer-term progress tracking.
  @HiveField(18)
  final double weeklyTarget;

  /// Monthly sustained effort target as [monthlyTarget].
  @HiveField(19)
  final double monthlyTarget;

  /// Annual overall target as [yearlyTarget].
  @HiveField(20)
  final double yearlyTarget;

  /// Reference to user-defined measurement units when applicable.
  /// - Used when [measurementUnit] is set to [MeasurementUnit.custom].
  @HiveField(21)
  final String? customMeasurementUnitId;

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

  @override
  List<Object?> get props => [
        ...super.props,
        refType,
        measurementUnit,
        customMeasurementUnitId,
        goalConstraint,
        refId,
        hourlyTarget,
        dailyTarget,
        weeklyTarget,
        monthlyTarget,
        yearlyTarget,
      ];
}
