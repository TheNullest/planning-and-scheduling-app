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
    @JsonKey(name: 'date_range_exception_ids') required List<String> dateRangeExceptionIds,
    @JsonKey(name: 'time_range_exception_ids') required List<String> timeRangeExceptionIds,
    @JsonKey(name: 'date_exceptions') required List<DateTime> dateExceptions,
    @JsonKey(name: 'week_day_exceptions') required List<String> weekDayExceptions,
    @JsonKey(name: 'month_day_exceptions') required List<int> monthDayExceptions,
    @JsonKey(name: 'enforce_schedule_bounds') required bool enforceScheduleBounds,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'end_at') DateTime? endAt,
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
        endAt: entity.endAt,
        startAt: entity.startAt,
        weekDayExceptions: List.from(entity.weekDayExceptions.map((item) => item.name).toList()),
        monthDayExceptions: List.from(entity.monthDayExceptions),
        timeRangeExceptionIds: List.from(entity.timeRangeExceptionIds),
        dateRangeExceptionIds: List.from(entity.dateRangeExceptionIds),
        dateExceptions: List.from(entity.dateExceptions),
      );

  /// Creates an instance from a JSON map.
  factory ScheduleConstraintsSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleConstraintsSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScheduleConstraintsSupabaseModelToJson(this);
}
