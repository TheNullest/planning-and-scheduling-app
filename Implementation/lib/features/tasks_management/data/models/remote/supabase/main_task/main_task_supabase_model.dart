import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/task_entity.dart';

part 'main_task_supabase_model.freezed.dart';
part 'main_task_supabase_model.g.dart';

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
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    int? priority,
    int? status,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
    @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId,
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
        status: entity.status,
        dueDate: entity.dueDate,
        totalSpentTime: entity.totalSpentTime,
        taskSchedulerId: entity.taskSchedulerId,
      );

  factory TaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskSupabaseModelFromJson(json);

  factory TaskSupabaseModel.empty() =>
      TaskSupabaseModel.fromEntity(TaskEntity.empty());
  @override
  Map<String, dynamic> toJson() => _$TaskSupabaseModelToJson(this);
}
