import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';

part 'scheduled_day_supabase_model.freezed.dart';
part 'scheduled_day_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledDaySupabaseModel with _$ScheduledDaySupabaseModel {
  const factory ScheduledDaySupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'schedule_constraint_id') required String taskId,
    @JsonKey(name: 'day_type') required String dayType,
    @JsonKey(name: 'day_value') required String dayValue,
    @JsonKey(name: 'can_repeat') required bool canRepeat,
    @JsonKey(name: 'scheduled_time_ids') required List<String> scheduledTimeIds,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledDaySupabaseModel;

  factory ScheduledDaySupabaseModel.fromEntity(ScheduledDayEntity entity) =>
      ScheduledDaySupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        dayType: entity.dayType.name,
        dayValue: entity.dayValue,
        taskId: entity.taskId,
        canRepeat: entity.canRepeat,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        scheduledTimeIds: List.from(entity.scheduledTimeIds),
      );

  factory ScheduledDaySupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDaySupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledDaySupabaseModelToJson(this);
}
