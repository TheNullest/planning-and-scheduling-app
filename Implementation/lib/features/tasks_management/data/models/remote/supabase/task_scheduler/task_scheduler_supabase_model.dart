import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';

part 'task_scheduler_supabase_model.freezed.dart';
part 'task_scheduler_supabase_model.g.dart';

@freezed
@JsonSerializable(createToJson: true, explicitToJson: true)
class TaskSchedulerSupabaseModel with _$TaskSchedulerSupabaseModel {
  const factory TaskSchedulerSupabaseModel({
    @JsonKey(name: 'main_task_id') required String mainTaskId,
    @JsonKey(name: 'repetition_type') required int repetitionType,
    required String? id,
    @JsonKey(name: 'time_unit') required int timeUnit,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'goal_id') String? goalId,
    @JsonKey(name: 'will_start_at') DateTime? willStartAt,
    @JsonKey(name: 'end_at') DateTime? endAt,
  }) = _TaskSchedulerSupabaseModel;

  /// Creates an instance of [TaskSchedulerSupabaseModel] from a domain [TaskSchedulerEntity].
  factory TaskSchedulerSupabaseModel.fromEntity(TaskSchedulerEntity entity) =>
      TaskSchedulerSupabaseModel(
        mainTaskId: entity.mainTaskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        goalId: entity.goalId,
        willStartAt: entity.willStartAt,
        endAt: entity.endAt,
        repetitionType: entity.repetitionType,
        timeUnit: entity.timeUnit,
      );

  /// Creates an instance from a JSON map.
  factory TaskSchedulerSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskSchedulerSupabaseModelFromJson(json);

  /// Returns an empty instance of [TaskSchedulerSupabaseModel].
  factory TaskSchedulerSupabaseModel.empty() =>
      TaskSchedulerSupabaseModel.fromEntity(TaskSchedulerEntity.empty());
}
