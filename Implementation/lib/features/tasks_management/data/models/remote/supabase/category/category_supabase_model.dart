import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/category.dart';

part 'category_supabase_model.freezed.dart';
part 'category_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class CategorySupabaseModel with _$CategorySupabaseModel {
  const factory CategorySupabaseModel({
    required String id,
    required String title,
    @JsonKey(name: 'color_code') required String colorCode,
    @JsonKey(name: 'icon_code') required String iconCode,
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CategorySupabaseModel;
  factory CategorySupabaseModel.empty() =>
      CategorySupabaseModel.fromEntity(CategoryEntity.empty());

  factory CategorySupabaseModel.fromEntity(CategoryEntity entity) =>
      CategorySupabaseModel(
        id: entity.id,
        title: entity.title,
        colorCode: entity.colorCode,
        iconCode: entity.iconCode,
        userId: entity.userId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );

  factory CategorySupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$CategorySupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CategorySupabaseModelToJson(this);
}
