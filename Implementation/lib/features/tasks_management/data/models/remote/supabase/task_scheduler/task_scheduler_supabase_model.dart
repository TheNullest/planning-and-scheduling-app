import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';

part 'task_scheduler_supabase_model.freezed.dart';
part 'task_scheduler_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TaskSchedulerSupabaseModel with _$TaskSchedulerSupabaseModel {
  const factory TaskSchedulerSupabaseModel({
    required String? id,
    @JsonKey(name: 'main_task_id') required String taskId,
    @JsonKey(name: 'repetition_type') required String repetitionType,
    @JsonKey(name: 'task_scheduler_specific_times', includeToJson: false, fromJson: _extractIds)
    required List<int>? specificTimes,
    @JsonKey(name: 'time_unit') required String timeUnit,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'goal_id') String? goalId,
    @JsonKey(name: 'will_start_at') DateTime? willStartAt,
    @JsonKey(name: 'due_at') DateTime? dueDate,
  }) = _TaskSchedulerSupabaseModel;

  /// Creates an instance of [TaskSchedulerSupabaseModel] from a domain [TaskSchedulerEntity].
  factory TaskSchedulerSupabaseModel.fromEntity(TaskSchedulerEntity entity) =>
      TaskSchedulerSupabaseModel(
        taskId: entity.taskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        goalId: entity.goalId,
        willStartAt: entity.willStartAt,
        dueDate: entity.dueDate,
        repetitionType: entity.repetitionType,
        timeUnit: entity.timeUnit,
        specificTimes: entity.specificTimes,
      );

  /// Creates an instance from a JSON map.
  factory TaskSchedulerSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskSchedulerSupabaseModelFromJson(json);

  /// Returns an empty instance of [TaskSchedulerSupabaseModel].
  factory TaskSchedulerSupabaseModel.empty() =>
      TaskSchedulerSupabaseModel.fromEntity(TaskSchedulerEntity.empty());

  @override
  Map<String, dynamic> toJson() => _$TaskSchedulerSupabaseModelToJson(this);
}

List<int>? _extractIds(DataMap json) {
  return (json['task_specific_times'] as List).map((item) => item['specific_time'] as int).toList();
}
