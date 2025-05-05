import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';

part 'schedule_constraint_supabase_model.freezed.dart';
part 'schedule_constraint_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduleConstraintSupabaseModel with _$ScheduleConstraintSupabaseModel {
  const factory ScheduleConstraintSupabaseModel({
    required String id,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'exception_date_ids') required List<String> exceptionDateIds,
    @JsonKey(name: 'exception_time_ids') required List<String> exceptionTimeIds,
    @JsonKey(name: 'exception_week_days') required List<String> exceptionWeekDays,
    @JsonKey(name: 'exception_month_days') required List<int> exceptionMonthDays,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'end_at') DateTime? endAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduleDefinitionSupabaseModel;

  /// Creates an instance of [ScheduleConstraintSupabaseModel] from a domain [String].
  factory ScheduleConstraintSupabaseModel.fromEntity(ScheduleConstraintEntity entity) =>
      ScheduleConstraintSupabaseModel(
        taskId: entity.taskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        endAt: entity.endAt,
        startAt: entity.startAt,
        exceptionWeekDays: List.from(entity.exceptionWeekDays.map((item) => item.name).toList()),
        exceptionMonthDays: List.from(entity.exceptionMonthDays),
        exceptionTimeIds: List.from(entity.exceptionTimeIds),
        exceptionDateIds: List.from(entity.exceptionDateIds),
      );

  /// Creates an instance from a JSON map.
  factory ScheduleConstraintSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleConstraintSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduleConstraintSupabaseModelToJson(this);
}
