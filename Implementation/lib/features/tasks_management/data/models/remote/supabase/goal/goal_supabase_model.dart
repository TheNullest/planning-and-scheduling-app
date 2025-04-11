import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/goal.dart';

part 'goal_supabase_model.freezed.dart';
part 'goal_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class GoalSupabaseModel with _$GoalSupabaseModel {
  const factory GoalSupabaseModel({
    required String taskId,
    required String measurementUnitId,
    required int measurementUnitValue,
    required String? id,
    @JsonKey(name: 'sub_task_id') String? subTaskId,
    @JsonKey(name: 'user_id') String? userId,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'per_active_hour') double? perActiveHour,
    @JsonKey(name: 'per_active_day') double? perActiveDay,
    @JsonKey(name: 'per_active_week') double? perActiveWeek,
    @JsonKey(name: 'per_active_month') double? perActiveMonth,
    @JsonKey(name: 'per_active_year') double? perActiveYear,
  }) = _GoalSupabaseModel;

  factory GoalSupabaseModel.fromEntity(GoalEntity entity) => GoalSupabaseModel(
        id: entity.id,
        taskId: entity.taskId,
        measurementUnitId: entity.measurementUnitId,
        measurementUnitValue: entity.measurementUnitValue,
        subTaskId: entity.subTaskId,
        userId: entity.userId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        perActiveHour: entity.perActiveHour,
        perActiveDay: entity.perActiveDay,
        perActiveWeek: entity.perActiveWeek,
        perActiveMonth: entity.perActiveMonth,
        perActiveYear: entity.perActiveYear,
      );

  factory GoalSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$GoalSupabaseModelFromJson(json);

  factory GoalSupabaseModel.empty() => GoalSupabaseModel.fromEntity(GoalEntity.empty());

  @override
  Map<String, dynamic> toJson() => _$GoalSupabaseModelToJson(this);
}
