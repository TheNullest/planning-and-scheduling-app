import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';

part 'schedule_constraint_supabase_model.freezed.dart';
part 'schedule_constraint_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class ScheduleConstraintsSupabaseModel with _$ScheduleConstraintsSupabaseModel {
  const factory ScheduleConstraintsSupabaseModel({
    required String id,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'date_exceptions') required List<DateTime> exceptionDates,
    @JsonKey(name: 'week_day_exceptions') required List<String> exceptionWeekDays,
    @JsonKey(name: 'month_day_exceptions') required List<int> exceptionMonthDays,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _ScheduleDefinitionSupabaseModel;

  /// Creates an instance of [ScheduleConstraintsSupabaseModel] from a domain [String].
  factory ScheduleConstraintsSupabaseModel.fromEntity(ScheduleConstraintsEntity entity) =>
      ScheduleConstraintsSupabaseModel(
        taskId: entity.taskId,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        endDate: entity.endDate,
        startDate: entity.startDate,
        exceptionWeekDays: List.from(entity.exceptionWeekDays.map((item) => item.name).toList()),
        exceptionMonthDays: List.from(entity.exceptionMonthDays),
        exceptionDates: List.from(entity.exceptionDates),
      );

  /// Creates an instance from a JSON map.
  factory ScheduleConstraintsSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleConstraintsSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduleConstraintsSupabaseModelToJson(this);
}
