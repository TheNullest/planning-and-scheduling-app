import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_day_definition.dart';

part 'scheduled_day_definition_supabase_model.freezed.dart';
part 'scheduled_day_definition_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledDayDefinitionSupabaseModel with _$ScheduledDayDefinitionSupabaseModel {
  const factory ScheduledDayDefinitionSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'schedule_definition_id') required String scheduleDefinitionId,
    @JsonKey(name: 'day_type') required String dayType,
    @JsonKey(name: 'day_value') required String dayValue,
    @JsonKey(name: 'can_repeat') required bool canRepeat,
    @JsonKey(name: 'scheduled_times') required List<String> scheduledTimes,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduledDayDefinitionSupabaseModel;

  factory ScheduledDayDefinitionSupabaseModel.fromEntity(ScheduledDayDefinitionEntity entity) =>
      ScheduledDayDefinitionSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        description: entity.description,
        dayType: entity.dayType.name,
        dayValue: entity.dayValue,
        scheduleDefinitionId: entity.scheduleDefinitionId,
        canRepeat: entity.canRepeat,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        scheduledTimes: entity.scheduledTimeIds,
      );

  factory ScheduledDayDefinitionSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDayDefinitionSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledDayDefinitionSupabaseModelToJson(this);
}
