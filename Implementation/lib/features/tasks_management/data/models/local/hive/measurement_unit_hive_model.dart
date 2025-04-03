import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/measurement_unit_entity.dart';

part 'measurement_unit_hive_model.g.dart';

@HiveType(typeId: 4) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class MeasurementUnitHiveModel extends MeasurementUnitEntity
    with HiveObjectMixin {
  MeasurementUnitHiveModel({
    required super.title,
    required super.iconCode,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.isDouble = false,
  });

  // For the purpose of testing
  MeasurementUnitHiveModel.empty() : super.empty();

  factory MeasurementUnitHiveModel.fromEntity(MeasurementUnitEntity entity) =>
      MeasurementUnitHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        title: entity.title,
        iconCode: entity.iconCode,
        isDouble: entity.isDouble,
      );

  @override
  MeasurementUnitHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? title,
    String? description,
    int? iconCode,
    bool? isDouble,
  }) =>
      MeasurementUnitHiveModel(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        description: description ?? this.description,
        iconCode: iconCode ?? this.iconCode,
        isDouble: isDouble ?? this.isDouble,
      );
}
