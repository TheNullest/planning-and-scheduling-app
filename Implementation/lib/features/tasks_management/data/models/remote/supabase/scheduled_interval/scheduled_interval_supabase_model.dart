import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';

part 'scheduled_interval_supabase_model.freezed.dart';
part 'scheduled_interval_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledIntervalSupabaseModel with _$ScheduledIntervalSupabaseModel {
  const factory ScheduledIntervalSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'start_at') required DateTime startAt,
    @JsonKey(name: 'schedule_constraint_id') required String taskId,
    @JsonKey(name: 'interval_unit') required String intervalUnit,
    @JsonKey(name: 'interval_value') required double intervalValue,
    @JsonKey(name: 'consecutive_occurrences') required int consecutiveOccurrences,
    @JsonKey(name: 'scheduled_time_ids') required List<String> scheduledTimeIds,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'repeat_count') int? repeatCount,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledIntervalSupabaseModel;

  factory ScheduledIntervalSupabaseModel.fromEntity(
    ScheduledIntervalEntity entity,
  ) =>
      ScheduledIntervalSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        taskId: entity.taskId,
        repeatCount: entity.repeatCount,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        startAt: entity.startDate,
        consecutiveOccurrences: entity.consecutiveOccurrences,
        intervalUnit: entity.intervalUnit.name,
        intervalValue: entity.intervalValue,
        scheduledTimeIds: List.from(entity.scheduledTimeIds),
        enforceScheduleBounds: entity.enforceScheduleBounds,
      );

  factory ScheduledIntervalSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledIntervalSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledIntervalSupabaseModelToJson(this);
}
