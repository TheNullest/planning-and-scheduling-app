import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';

part 'schuduled_interval_supabase_model.freezed.dart';
part 'schuduled_interval_supabase_model.g.dart';

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
    @JsonKey(name: 'schedule_definition_id') required String scheduleDefinitionId,
    @JsonKey(name: 'interval_unit') required String intervalUnit,
    @JsonKey(name: 'interval_value') required double intervalValue,
    @JsonKey(name: 'scheduled_times') required List<String> scheduledTimes,
    @JsonKey(name: 'time_exceptions') required List<String> timeExceptions,
    @JsonKey(name: 'date_exceptions') required List<String> dateExceptions,
    @JsonKey(name: 'repeat_count') required int repeatCount,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledIntervalSupabaseModel;

  factory ScheduledIntervalSupabaseModel.fromEntity(ScheduledIntervalEntity entity) =>
      ScheduledIntervalSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        scheduleDefinitionId: entity.scheduleDefinitionId,
        repeatCount: entity.repeatCount,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        intervalUnit: entity.intervalUnit.name,
        intervalValue: entity.intervalValue,
        scheduledTimes: entity.scheduledTimes.map((item) => item.id).toList(),
        timeExceptions: entity.timeExceptions.map((item) => item.id).toList(),
        dateExceptions: entity.dateExceptions.map((item) => item.id).toList(),
      );

  factory ScheduledIntervalSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledIntervalSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledIntervalSupabaseModelToJson(this);
}
