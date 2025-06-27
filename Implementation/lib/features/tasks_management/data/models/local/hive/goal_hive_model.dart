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
    required this.goalTargets,
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
      goalTargets: entity.goalTargets,
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
  final MeasurementUnit measurementUnit;

  /// Defines whether the goal requires meeting a minimum
  /// or staying below a maximum value.
  @HiveField(14)
  final GoalConstraint goalConstraint;

  @HiveField(15)
  final Map<RepetitionType, dynamic> goalTargets;

  /// Reference to user-defined measurement units when applicable.
  /// - Used when [measurementUnit] is set to [MeasurementUnit.custom].
  @HiveField(16)
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
    Map<RepetitionType, dynamic>? goalTargets,
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
      goalTargets: goalTargets ?? this.goalTargets,
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
        goalTargets,
      ];
}
