import 'package:flutter/widgets.dart' show IconData;
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class CustomeMeasurementUnitUI extends BaseUIModel {
  CustomeMeasurementUnitUI({
    required this.title,
    required this.isDouble,
    required this.icon,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
    this.value,
  });

  final String title;
  final int? value;
  final bool isDouble;
  final IconData icon;

  @override
  CustomeMeasurementUnitUI copyWith({
    String? id,
    String? description,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDouble,
    IconData? icon,
    int? value,
  }) =>
      CustomeMeasurementUnitUI(
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
