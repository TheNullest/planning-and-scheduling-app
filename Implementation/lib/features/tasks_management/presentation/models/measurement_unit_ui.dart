import 'package:flutter/widgets.dart' show IconData;
import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';

class MeasurementUnitUI extends BaseUIModel {
  MeasurementUnitUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.title,
    required this.isDouble,
    required this.icon,
    this.value,
  });

  final String title;
  final int? value;
  final bool isDouble;
  final IconData icon;

  @override
  MeasurementUnitUI copyWith({
    String? id,
    String? description,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDouble,
    IconData? icon,
    int? value,
  }) =>
      MeasurementUnitUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        isDouble: isDouble ?? this.isDouble,
        icon: icon ?? this.icon,
        value: value ?? this.value,
      );
}
