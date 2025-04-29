import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/measurement_unit_ui.dart';

class GoalUI extends BaseUIModel {
  GoalUI({
    required this.customeCustomeMeasurementUnit,
    required this.perActiveHour,
    required this.perActiveDay,
    required this.perActiveWeek,
    required this.perActiveMonth,
    required this.perActiveYear,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
  });

  final CustomeMeasurementUnitUI customeCustomeMeasurementUnit;
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
    CustomeMeasurementUnitUI? customeCustomeMeasurementUnit,
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
        customeCustomeMeasurementUnit:
            customeCustomeMeasurementUnit ?? this.customeCustomeMeasurementUnit,
        perActiveHour: perActiveHour ?? this.perActiveHour,
        perActiveDay: perActiveDay ?? this.perActiveDay,
        perActiveWeek: perActiveWeek ?? this.perActiveWeek,
        perActiveMonth: perActiveMonth ?? this.perActiveMonth,
        perActiveYear: perActiveYear ?? this.perActiveYear,
      );
}
