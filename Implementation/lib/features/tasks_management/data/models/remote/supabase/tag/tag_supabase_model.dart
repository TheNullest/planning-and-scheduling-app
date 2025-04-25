import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/tag.dart';

part 'tag_supabase_model.freezed.dart';
part 'tag_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TagSupabaseModel with _$TagSupabaseModel {
  const factory TagSupabaseModel({
    required String id,
    required String title,
    @JsonKey(name: 'color_code') required int colorCode,
    @JsonKey(name: 'icon_code') required int iconCode,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'user_id') required String userId,
    String? description,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TagSupabaseModel;

  /// Creates an instance of [TagSupabaseModel] from a [TagEntity].
  factory TagSupabaseModel.fromEntity(TagEntity entity) => TagSupabaseModel(
        id: entity.id,
        title: entity.title,
        colorCode: entity.colorCode,
        iconCode: entity.iconCode,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
      );

  /// Creates an instance from JSON map.
  factory TagSupabaseModel.fromJson(Map<String, dynamic> json) => _$TagSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TagSupabaseModelToJson(this);
}
