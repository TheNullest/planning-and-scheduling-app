import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/measurement_unit_ui.dart';

class GoalUI extends BaseUIModel {
  GoalUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.measurementUnit,
    required this.perActiveHour,
    required this.perActiveDay,
    required this.perActiveWeek,
    required this.perActiveMonth,
    required this.perActiveYear,
  });

  final MeasurementUnitUI measurementUnit;
  final double perActiveHour;
  final double perActiveDay;
  final double perActiveWeek;
  final double perActiveMonth;
  final double perActiveYear;

  @override
  GoalUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    MeasurementUnitUI? measurementUnit,
    double? perActiveHour,
    double? perActiveDay,
    double? perActiveWeek,
    double? perActiveMonth,
    double? perActiveYear,
  }) =>
      GoalUI(
        id: id ?? this.id,
        description: description ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        measurementUnit: measurementUnit ?? this.measurementUnit,
        perActiveHour: perActiveHour ?? this.perActiveHour,
        perActiveDay: perActiveDay ?? this.perActiveDay,
        perActiveWeek: perActiveWeek ?? this.perActiveWeek,
        perActiveMonth: perActiveMonth ?? this.perActiveMonth,
        perActiveYear: perActiveYear ?? this.perActiveYear,
      );
}
