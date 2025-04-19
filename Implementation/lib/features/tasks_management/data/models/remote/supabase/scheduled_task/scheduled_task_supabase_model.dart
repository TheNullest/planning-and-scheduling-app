import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';

part 'scheduled_task_supabase_model.freezed.dart';
part 'scheduled_task_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledTaskSupabaseModel with _$ScheduledTaskSupabaseModel {
  const factory ScheduledTaskSupabaseModel({
    required String? id,
    @JsonKey(name: 'main_task_id') required String taskId,
    @JsonKey(name: 'repetition_type') required String repetitionType,
    @JsonKey(name: 'scheduled_task_specific_times', includeToJson: false, fromJson: _extractIds)
    required List<int>? specificTimes,
    @JsonKey(name: 'time_unit') required String timeUnit,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'will_start_at') DateTime? willStartAt,
    @JsonKey(name: 'due_at') DateTime? dueDate,
  }) = _ScheduledTaskSupabaseModel;

  /// Creates an instance of [ScheduledTaskSupabaseModel] from a domain [ScheduledTaskEntity].
  factory ScheduledTaskSupabaseModel.fromEntity(ScheduledTaskEntity entity) =>
      ScheduledTaskSupabaseModel(
        taskId: entity.taskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        willStartAt: entity.willStartAt,
        dueDate: entity.dueDate,
        repetitionType: entity.repetitionType,
        timeUnit: entity.timeUnit,
        specificTimes: entity.specificTimes,
      );

  /// Creates an instance from a JSON map.
  factory ScheduledTaskSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTaskSupabaseModelFromJson(json);

  /// Returns an empty instance of [ScheduledTaskSupabaseModel].
  factory ScheduledTaskSupabaseModel.empty() =>
      ScheduledTaskSupabaseModel.fromEntity(ScheduledTaskEntity.empty());

  @override
  Map<String, dynamic> toJson() => _$ScheduledTaskSupabaseModelToJson(this);
}

List<int>? _extractIds(DataMap json) {
  return (json['task_specific_times'] as List).map((item) => item['specific_time'] as int).toList();
}
