import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';

part 'custom_measurement_unit_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.customMeasurementUnit) // Unique Type ID for Hive
class CustomMeasurementUnitHiveModel extends CustomMeasurementUnitEntity {
  CustomMeasurementUnitHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.title,
    required super.isDouble,
    required super.iconCode,
  });

  /// Creates a Hive model from a domain entity
  factory CustomMeasurementUnitHiveModel.fromEntity(CustomMeasurementUnitEntity entity) {
    return CustomMeasurementUnitHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      description: entity.description,
      updatedAt: entity.updatedAt,
      title: entity.title,
      isDouble: entity.isDouble,
      iconCode: entity.iconCode,
    );
  }

  /// Creates a copy with updated values
  @override
  CustomMeasurementUnitHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? title,
    bool? isDouble,
    int? iconCode,
  }) {
    return CustomMeasurementUnitHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      isDouble: isDouble ?? this.isDouble,
      iconCode: iconCode ?? this.iconCode,
    );
  }
}
