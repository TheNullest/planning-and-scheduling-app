import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/measurement_unit_entity.dart';

part 'measurement_unit_supabase_model.freezed.dart';
part 'measurement_unit_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class MeasurementUnitSupabaseModel with _$MeasurementUnitSupabaseModel {
  const factory MeasurementUnitSupabaseModel({
    required String title,
    required String? id,
    @JsonKey(name: 'icon_code') required String iconCode,
    @JsonKey(name: 'is_double', defaultValue: false) required bool isDouble,
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MeasurementUnitSupabaseModel;

  factory MeasurementUnitSupabaseModel.fromEntity(
          MeasurementUnitEntity entity) =>
      MeasurementUnitSupabaseModel(
        id: entity.id,
        title: entity.title,
        iconCode: entity.iconCode.toString(),
        userId: entity.userId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        isDouble: entity.isDouble,
      );

  factory MeasurementUnitSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitSupabaseModelFromJson(json);

  factory MeasurementUnitSupabaseModel.empty() =>
      MeasurementUnitSupabaseModel.fromEntity(MeasurementUnitEntity.empty());
}
