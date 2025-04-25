import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';

part 'schedule_definition_supabase_model.freezed.dart';
part 'schedule_definition_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduleDefinitionSupabaseModel with _$ScheduleDefinitionSupabaseModel {
  const factory ScheduleDefinitionSupabaseModel({
    required String id,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'repetition_type') required String repetitionType,
    @JsonKey(name: 'month_days') required List<int> monthDays,
    @JsonKey(name: 'week_days') required List<String> weekDays,
    @JsonKey(name: 'repeat_count') required int repeatCount,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'scheduled_times') required List<String> scheduledTimes,
    @JsonKey(name: 'scheduled_days') required List<String> scheduledDays,
    @JsonKey(name: 'scheduled_intervals') required List<String> scheduledIntervals,
    @JsonKey(name: 'scheduled_date_range') String? scheduledDateRange,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduleDefinitionSupabaseModel;

  /// Creates an instance of [ScheduleDefinitionSupabaseModel] from a domain [ScheduleDefinitionEntity].
  factory ScheduleDefinitionSupabaseModel.fromEntity(ScheduleDefinitionEntity entity) =>
      ScheduleDefinitionSupabaseModel(
        taskId: entity.taskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        repetitionType: entity.repetitionType.name,
        monthDays: entity.monthDays,
        repeatCount: entity.repeatCount,
        scheduledDateRange: entity.scheduledDateRange!.id,
        weekDays: entity.weekDays.map((item) => item.name).toList(),
        scheduledTimes: entity.scheduledTimes.map((item) => item.id).toList(),
        scheduledDays: entity.scheduledDays.map((item) => item.id).toList(),
        scheduledIntervals: entity.scheduledIntervals.map((item) => item.id).toList(),
      );

  /// Creates an instance from a JSON map.
  factory ScheduleDefinitionSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDefinitionSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduleDefinitionSupabaseModelToJson(this);
}
