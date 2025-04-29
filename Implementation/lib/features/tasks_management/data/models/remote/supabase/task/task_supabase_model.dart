import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/task.dart';

part 'task_supabase_model.freezed.dart';
part 'task_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TaskSupabaseModel with _$TaskSupabaseModel {
  const factory TaskSupabaseModel({
    required String id,
    required String title,
    @JsonKey(name: 'color_code') required int colorCode,
    @JsonKey(name: 'icon_code') required int iconCode,
    @JsonKey(name: 'task_status') required String taskStatus,
    required String priority,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required bool archived,
    @JsonKey(name: 'category_ids') required List<String> categoryIds,
    @JsonKey(name: 'fixed_tag_ids') required List<String> fixedTagIds,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'total_spent_time') required Duration totalSpentTime,
    String? description,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TaskSupabaseModel;

  factory TaskSupabaseModel.fromEntity(TaskEntity entity) => TaskSupabaseModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        title: entity.title,
        colorCode: entity.colorCode,
        iconCode: entity.iconCode,
        priority: entity.priority.name,
        archived: entity.archived,
        totalSpentTime: entity.totalSpentTime,
        taskStatus: entity.taskStatus.name,
        categoryIds: entity.categoryIds,
        fixedTagIds: entity.categoryIds,
      );

  factory TaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskSupabaseModelToJson(this);
}
