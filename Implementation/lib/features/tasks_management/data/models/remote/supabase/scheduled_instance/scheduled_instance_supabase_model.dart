import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';

part 'scheduled_instance_supabase_model.freezed.dart';
part 'scheduled_instance_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduledInstanceSupabaseModel with _$ScheduledInstanceSupabaseModel {
  const factory ScheduledInstanceSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'start_date_time') required DateTime startDateTime,
    @JsonKey(name: 'end_date_time') required DateTime endDateTime,
    @JsonKey(name: 'scheduler_id') required String schedulerId,
    @JsonKey(name: 'scheduler_type') required String schedulerType,
    @JsonKey(name: 'task_status') required String taskStatus,
    @JsonKey(name: 'sequence_number') required int sequenceNumber,
    @JsonKey(name: 'success_percentage') required int successPercentage,
    @JsonKey(name: 'timezone') required String timezone,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'exception_reason') String? exceptionReason, // Reused for exception reason
  }) = _ScheduledInstanceSupabaseModel;

  /// Creates a Supabase model from a domain [ScheduledInstanceEntity].
  factory ScheduledInstanceSupabaseModel.fromEntity(ScheduledInstanceEntity entity) =>
      ScheduledInstanceSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        taskId: entity.taskId,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        startDateTime: entity.startDateTime,
        endDateTime: entity.endDateTime,
        schedulerId: entity.schedulerId,
        schedulerType: entity.schedulerType.name, // Converting enum to String
        taskStatus: entity.taskStatus.name, // Converting enum to String
        sequenceNumber: entity.sequenceNumber,
        successPercentage: entity.successPercentage,
        timezone: entity.timezone,
        exceptionReason: entity.description, // Updated to use exception reason
      );

  factory ScheduledInstanceSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduledInstanceSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduledInstanceSupabaseModelToJson(this);
}
