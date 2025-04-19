import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
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
    @JsonKey(name: 'color_code') required String colorCode,
    @JsonKey(name: 'icon_code') required String iconCode,
    @JsonKey(name: 'task_categories', includeToJson: false, fromJson: _categories)
    required List<String>? categoryIds,
    @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
    required List<String>? tagIds,
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    int? priority,
    bool? archived,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
    @JsonKey(
      name: 'scheduled_task_id',
    )
    String? scheduledTaskId,
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
        priority: entity.priority,
        archived: entity.archived,
        dueDate: entity.dueDate,
        totalSpentTime: entity.totalSpentTime,
        scheduledTaskId: entity.scheduledTaskId,
        categoryIds: entity.categoryIds,
        tagIds: entity.fixedTagIds,
      );

  factory TaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskSupabaseModelFromJson(json);

  factory TaskSupabaseModel.empty() => TaskSupabaseModel.fromEntity(TaskEntity.empty());
  @override
  Map<String, dynamic> toJson() => _$TaskSupabaseModelToJson(this);
}

List<String>? _categories(DataMap json) => _extractIds(json, 'task_categories');
List<String>? _tags(DataMap json) => _extractIds(json, 'task_tags');

List<String>? _extractIds(DataMap json, String fieldName) {
  if (json is List) {
    return (json[fieldName] as List).map((item) => item['id'] as String).toList();
  }
  return [];
}
