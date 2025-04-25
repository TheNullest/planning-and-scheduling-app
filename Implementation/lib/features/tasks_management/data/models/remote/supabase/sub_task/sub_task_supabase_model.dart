import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/sub_task.dart';

part 'sub_task_supabase_model.freezed.dart';
part 'sub_task_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class SubTaskSupabaseModel with _$SubTaskSupabaseModel {
  const factory SubTaskSupabaseModel({
    required String title,
    required String id,
    required String priority,
    required String status,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
    String? description,
  }) = _SubTaskSupabaseModel;

  /// Creates a [SubTaskSupabaseModel] from a [SubTaskEntity].
  factory SubTaskSupabaseModel.fromEntity(SubTaskEntity entity) => SubTaskSupabaseModel(
        taskId: entity.taskId,
        title: entity.title,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        priority: entity.priority.name,
        status: entity.status.name,
      );

  /// Parses a JSON map into a [SubTaskSupabaseModel] instance.
  factory SubTaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$SubTaskSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubTaskSupabaseModelToJson(this);
}
