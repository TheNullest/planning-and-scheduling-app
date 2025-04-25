import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/measurement_unit.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';

/// Represents a measurable target associated with specific tasks or activities.
///
/// Tracks progress requirements across different time periods and constraints,
/// supporting both system-defined and custom measurement units.
///
/// # Examples
///
/// **Fitness Goal**:
/// ```dart
/// GoalEntity(
///   id: 'fit_goal_1',
///   userId: 'user_789',
///   description: 'Daily exercise target',
///   refType: ReferenceType.task,
///   refId: 'task_gym',
///   measurementUnit: MeasurementUnit.count,
///   goalConstraint: GoalConstraint.min,
///   hourlyTarget: 5,       // 5 pushups per active hour
///   dailyTarget: 50,       // Minimum 50 pushups daily
///   weeklyTarget: 350,     // Weekly target
///   monthlyTarget: 1500,   // Example monthly target
///   yearlyTarget: 18000,   // Example yearly target
///   customeMeasurementUnitId: null,
/// );
/// ```
///
/// **Hydration Reminder**:
/// ```dart
/// GoalEntity(
///   id: 'water_goal_2',
///   userId: 'user_123',
///   description: 'Daily water intake target',
///   refType: ReferenceType.subTask,
///   refId: 'sub_hydration',
///   measurementUnit: MeasurementUnit.liter,
///   goalConstraint: GoalConstraint.min,
///   hourlyTarget: 0,       // Not applicable for hourly tracking
///   dailyTarget: 2.5,      // At least 2.5 liters daily
///   weeklyTarget: 17.5,    // Weekly target
///   monthlyTarget: 70,     // Example monthly target
///   yearlyTarget: 840,     // Example yearly target
///   customeMeasurementUnitId: null,
/// );
/// ```
class GoalEntity extends BaseEntityAbstraction {
  GoalEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
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
  });

  /// Creates a complete goal configuration.
  ///
  /// [refType]: Whether this goal is for a main task or sub-task.
  /// [refId]: Associated task/sub-task identifier.
  /// [customMeasurementUnitId]: Base unit for progress tracking (e.g., liters, hours).
  /// [goalConstraint]: Success criteria (minimum/maximum thresholds).
  /// [hourlyTarget, dailyTarget, weeklyTarget, monthlyTarget, yearlyTarget]:
  /// required target amounts during active time periods.
  /// [measurementUnit]: Reference to user-defined units when needed.

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

  @override
  GoalEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
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
  }) =>
      GoalEntity(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        description: description ?? this.description,
        refType: refType ?? this.refType,
        refId: refId ?? this.refId,
        measurementUnit: measurementUnit ?? this.measurementUnit,
        customMeasurementUnitId: customMeasurementUnitId ?? this.customMeasurementUnitId,
        goalConstraint: goalConstraint ?? this.goalConstraint,
        minutelyTarget: minutelyTarget ?? this.minutelyTarget,
        hourlyTarget: hourlyTarget ?? this.hourlyTarget,
        dailyTarget: dailyTarget ?? this.dailyTarget,
        weeklyTarget: weeklyTarget ?? this.weeklyTarget,
        monthlyTarget: monthlyTarget ?? this.monthlyTarget,
        yearlyTarget: yearlyTarget ?? this.yearlyTarget,
      );

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
