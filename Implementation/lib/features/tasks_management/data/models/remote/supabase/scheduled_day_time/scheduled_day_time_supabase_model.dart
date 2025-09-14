import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';

part 'scheduled_day_time_supabase_model.freezed.dart';
part 'scheduled_day_time_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledDayTimeSupabaseModel with _$ScheduledDayTimeSupabaseModel {
  const factory ScheduledDayTimeSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'schedule_constraint_id') required String taskId,
    @JsonKey(name: 'day_type') required String dayType,
    @JsonKey(name: 'day_label') required String dayLabel,
    @JsonKey(name: 'repeat_count') required int repeatCount,
    @JsonKey(name: 'time_mode') required String timeMode,
    @JsonKey(name: 'start_time') required int startTime,
    @JsonKey(name: 'end_time') required int endTime,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledDayTimeSupabaseModel;

  factory ScheduledDayTimeSupabaseModel.fromEntity(ScheduledDayTimeEntity entity) =>
      ScheduledDayTimeSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        dayType: entity.dayType.name,
        dayLabel: entity.dayLabel,
        taskId: entity.taskId,
        startTime: entity.startTime,
        endTime: entity.endTime,
        repeatCount: entity.repeatCount,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        timeMode: entity.timeMode.name,
      );

  factory ScheduledDayTimeSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDayTimeSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledDayTimeSupabaseModelToJson(this);
}
