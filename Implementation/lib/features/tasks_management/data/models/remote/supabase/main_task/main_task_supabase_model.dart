import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';

part 'main_task_supabase_model.freezed.dart';
part 'main_task_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class MainTaskSupabaseModel with _$MainTaskSupabaseModel {
  const factory MainTaskSupabaseModel({
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
  }) = _MainTaskSupabaseModel;

  factory MainTaskSupabaseModel.fromEntity(MainTaskEntity entity) =>
      MainTaskSupabaseModel(
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

  factory MainTaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$MainTaskSupabaseModelFromJson(json);

  factory MainTaskSupabaseModel.empty() =>
      MainTaskSupabaseModel.fromEntity(MainTaskEntity.empty());
}
