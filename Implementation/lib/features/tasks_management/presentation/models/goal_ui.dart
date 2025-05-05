import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/features/tasks_management/presentation/models/measurement_unit_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class GoalUI extends BaseUIModel {
  GoalUI({
    required this.customeCustomeMeasurementUnit,
    required this.minutelyTarget,
    required this.hourlyTarget,
    required this.dailyTarget,
    required this.weeklyTarget,
    required this.monthlyTarget,
    required this.yearlyTarget,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory GoalUI.fromEntity({
    required GoalEntity entity,
    required CustomeMeasurementUnitUI customeCustomeMeasurementUnit,
  }) =>
      GoalUI(
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        userId: entity.userId,
        customeCustomeMeasurementUnit: customeCustomeMeasurementUnit,
        minutelyTarget: entity.minutelyTarget,
        hourlyTarget: entity.hourlyTarget,
        dailyTarget: entity.dailyTarget,
        weeklyTarget: entity.weeklyTarget,
        monthlyTarget: entity.monthlyTarget,
        yearlyTarget: entity.yearlyTarget,
      );

  final CustomeMeasurementUnitUI customeCustomeMeasurementUnit;
  final double minutelyTarget;
  final double hourlyTarget;
  final double dailyTarget;
  final double weeklyTarget;
  final double monthlyTarget;
  final double yearlyTarget;

  @override
  GoalUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    CustomeMeasurementUnitUI? customeCustomeMeasurementUnit,
    double? minutelyTarget,
    double? hourlyTarget,
    double? dailyTarget,
    double? weeklyTarget,
    double? monthlyTarget,
    double? yearlyTarget,
    String? userId,
  }) =>
      GoalUI(
        id: id ?? this.id,
        description: description ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        customeCustomeMeasurementUnit:
            customeCustomeMeasurementUnit ?? this.customeCustomeMeasurementUnit,
        minutelyTarget: minutelyTarget ?? this.minutelyTarget,
        hourlyTarget: hourlyTarget ?? this.hourlyTarget,
        dailyTarget: dailyTarget ?? this.dailyTarget,
        weeklyTarget: weeklyTarget ?? this.weeklyTarget,
        monthlyTarget: monthlyTarget ?? this.monthlyTarget,
        yearlyTarget: yearlyTarget ?? this.yearlyTarget,
        userId: userId ?? this.userId,
      );
}
