import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';

part 'custom_measurement_unit_supabase_model.freezed.dart';
part 'custom_measurement_unit_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class CustomMeasurementUnitSupabaseModel with _$CustomMeasurementUnitSupabaseModel {
  const factory CustomMeasurementUnitSupabaseModel({
    required String id,
    required String title,
    @JsonKey(name: 'icon_code') required int iconCode,
    @JsonKey(name: 'is_double', defaultValue: false) required bool isDouble,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _CustomMeasurementUnitSupabaseModel;

  factory CustomMeasurementUnitSupabaseModel.fromEntity(
    CustomMeasurementUnitEntity entity,
  ) =>
      CustomMeasurementUnitSupabaseModel(
        id: entity.id,
        title: entity.title,
        iconCode: entity.iconCode,
        userId: entity.userId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        isDouble: entity.isDouble,
      );

  factory CustomMeasurementUnitSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomMeasurementUnitSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomMeasurementUnitSupabaseModelToJson(this);
}
