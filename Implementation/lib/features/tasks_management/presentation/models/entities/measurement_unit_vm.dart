import 'package:flutter/widgets.dart' show IconData;
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class CustomeMeasurementUnitVM extends BaseViewModel {
  CustomeMeasurementUnitVM({
    required this.title,
    required this.isDouble,
    required this.icon,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  factory CustomeMeasurementUnitVM.fromEntity(CustomMeasurementUnitEntity entity) =>
      CustomeMeasurementUnitVM(
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        userId: entity.userId,
        title: entity.title,
        isDouble: entity.isDouble,
        icon: IconData(entity.iconCode),
      );

  final String title;
  final bool isDouble;
  final IconData icon;

  @override
  CustomeMeasurementUnitVM copyWith({
    String? id,
    String? description,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDouble,
    IconData? icon,
    String? userId,
  }) =>
      CustomeMeasurementUnitVM(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        isDouble: isDouble ?? this.isDouble,
        icon: icon ?? this.icon,
        userId: userId ?? this.userId,
      );
}
