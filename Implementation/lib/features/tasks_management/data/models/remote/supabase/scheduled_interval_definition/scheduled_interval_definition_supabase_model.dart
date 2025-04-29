import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_interval_definition.dart';

part 'scheduled_interval_definition_supabase_model.freezed.dart';
part 'scheduled_interval_definition_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledIntervalDefinitionSupabaseModel with _$ScheduledIntervalDefinitionSupabaseModel {
  const factory ScheduledIntervalDefinitionSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'schedule_definition_id') required String scheduleDefinitionId,
    @JsonKey(name: 'interval_unit') required String intervalUnit,
    @JsonKey(name: 'interval_value') required double intervalValue,
    @JsonKey(name: 'scheduled_time_ids') required List<String> scheduledTimeIds,
    @JsonKey(name: 'time_exception_ids') required List<String> timeExceptionIds,
    @JsonKey(name: 'date_exception_ids') required List<String> dateExceptionIds,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'repeat_count') int? repeatCount,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledIntervalDefinitionSupabaseModel;

  factory ScheduledIntervalDefinitionSupabaseModel.fromEntity(
    ScheduledIntervalDefinitionEntity entity,
  ) =>
      ScheduledIntervalDefinitionSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        scheduleDefinitionId: entity.scheduleDefinitionId,
        repeatCount: entity.repeatCount,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        intervalUnit: entity.intervalUnit.name,
        intervalValue: entity.intervalValue,
        scheduledTimeIds: entity.scheduledTimeIds,
        timeExceptionIds: entity.timeExceptionIds,
        dateExceptionIds: entity.dateExceptionIds,
        enforceScheduleBounds: entity.enforceScheduleBounds,
      );

  factory ScheduledIntervalDefinitionSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledIntervalDefinitionSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledIntervalDefinitionSupabaseModelToJson(this);
}
