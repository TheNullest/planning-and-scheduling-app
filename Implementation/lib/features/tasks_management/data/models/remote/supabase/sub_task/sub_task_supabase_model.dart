import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';

part 'sub_task_supabase_model.freezed.dart';
part 'sub_task_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class SubTaskSupabaseModel with _$SubTaskSupabaseModel {
  const factory SubTaskSupabaseModel({
    @JsonKey(name: 'main_task_id') required String mainTaskId,
    required String title,
    required String? id,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'user_id') String? userId,
    int? priority,
    int? status,
  }) = _SubTaskSupabaseModel;

  /// Creates a [SubTaskSupabaseModel] from a [SubTaskEntity].
  factory SubTaskSupabaseModel.fromEntity(SubTaskEntity entity) =>
      SubTaskSupabaseModel(
        mainTaskId: entity.mainTaskId,
        title: entity.title,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        priority: entity.priority,
        status: entity.status,
      );

  /// Parses a JSON map into a [SubTaskSupabaseModel] instance.
  factory SubTaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$SubTaskSupabaseModelFromJson(json);

  /// Returns an empty [SubTaskSupabaseModel] instance.
  factory SubTaskSupabaseModel.empty() =>
      SubTaskSupabaseModel.fromEntity(SubTaskEntity.empty());
}
