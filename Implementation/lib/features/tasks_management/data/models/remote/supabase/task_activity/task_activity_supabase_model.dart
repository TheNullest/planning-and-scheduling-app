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
    @JsonKey(name: 'ref_type') required String refType,
    @JsonKey(name: 'ref_id') required String refId,
    required String id,
    @JsonKey(name: 'task_status') required String taskStatus,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'variable_tags') required List<String> variableTags,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'schedule_definition_id') String? scheduleDefinitionId,
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
        scheduleDefinitionId: entity.scheduleDefinitionId,
        variableTags: entity.variableTags.map((item) => item.id).toList(),
      );

  @override
  Map<String, dynamic> toJson() => _$TaskActivitySupabaseModelToJson(this);
}
