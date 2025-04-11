import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/tag.dart';

/// The `tags` attribute can be used to categorize or label a task in various ways,
/// depending on the specific needs and preferences of the user. Here's an example:
///
/// For example, a task like "Learn Python" could be placed in the "Programming" category.
/// To further specify the task, tags could be used to indicate the specific Python
/// version (e.g., "Python 3.11") or the intended use case (e.g., "Web development").
///
/// The choice of tags is entirely up to the user and can vary based on their individual
/// workflow and organizational preferences.

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
    @JsonKey(name: 'color_code') required String colorCode,
    @JsonKey(name: 'icon_code') required String iconCode,
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
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
  factory TagSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TagSupabaseModelFromJson(json);

  /// Returns an empty TagSupabaseModel. Ensure TagEntity.empty() is defined.
  factory TagSupabaseModel.empty() =>
      TagSupabaseModel.fromEntity(TagEntity.empty());

  @override
  Map<String, dynamic> toJson() => _$TagSupabaseModelToJson(this);
}
