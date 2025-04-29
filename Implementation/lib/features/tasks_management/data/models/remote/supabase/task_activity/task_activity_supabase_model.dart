import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/task_activity.dart';

part 'task_activity_supabase_model.freezed.dart';
part 'task_activity_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TaskActivitySupabaseModel with _$TaskActivitySupabaseModel {
  const factory TaskActivitySupabaseModel({
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'ref_type') required String refType,
    @JsonKey(name: 'ref_id') required String refId,
    @JsonKey(name: 'task_status') required String taskStatus,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'variable_tag_ids') required List<String> variableTagIds,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'scheduler_id') String? schedulerId,
    @JsonKey(name: 'scheduler_type') String? schedulerType,
    String? description,
  }) = _TaskActivitySupabaseModel;

  /// Creates a [TaskActivitySupabaseModel] from a JSON map.
  factory TaskActivitySupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskActivitySupabaseModelFromJson(json);

  /// Converts a [TaskActivityEntity] (domain entity) into a [TaskActivitySupabaseModel].
  factory TaskActivitySupabaseModel.fromEntity(TaskActivityEntity entity) =>
      TaskActivitySupabaseModel(
        refId: entity.referenceId,
        refType: entity.referenceType.name,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        taskStatus: entity.taskStatus.name,
        schedulerId: entity.schedulerId,
        variableTagIds: entity.variableTagIds,
      );

  @override
  Map<String, dynamic> toJson() => _$TaskActivitySupabaseModelToJson(this);
}
