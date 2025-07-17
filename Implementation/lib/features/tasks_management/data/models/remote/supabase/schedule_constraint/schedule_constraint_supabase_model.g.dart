// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_constraint_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduleConstraintsSupabaseModelToJson(
        ScheduleConstraintsSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'date_range_exception_ids': instance.dateRangeExceptionIds,
      'time_range_exception_ids': instance.timeRangeExceptionIds,
      'date_exceptions':
          instance.dateExceptions.map((e) => e.toIso8601String()).toList(),
      'week_day_exceptions': instance.weekDayExceptions,
      'month_day_exceptions': instance.monthDayExceptions,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'start_at': instance.startAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduleDefinitionSupabaseModelImpl
    _$$ScheduleDefinitionSupabaseModelImplFromJson(Map<String, dynamic> json) =>
        _$ScheduleDefinitionSupabaseModelImpl(
          id: json['id'] as String,
          taskId: json['task_id'] as String,
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          dateRangeExceptionIds:
              (json['date_range_exception_ids'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          timeRangeExceptionIds:
              (json['time_range_exception_ids'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          dateExceptions: (json['date_exceptions'] as List<dynamic>)
              .map((e) => DateTime.parse(e as String))
              .toList(),
          weekDayExceptions: (json['week_day_exceptions'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          monthDayExceptions: (json['month_day_exceptions'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
          enforceScheduleBounds: json['enforce_schedule_bounds'] as bool,
          startAt: json['start_at'] == null
              ? null
              : DateTime.parse(json['start_at'] as String),
          endAt: json['end_at'] == null
              ? null
              : DateTime.parse(json['end_at'] as String),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$ScheduleDefinitionSupabaseModelImplToJson(
        _$ScheduleDefinitionSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'date_range_exception_ids': instance.dateRangeExceptionIds,
      'time_range_exception_ids': instance.timeRangeExceptionIds,
      'date_exceptions':
          instance.dateExceptions.map((e) => e.toIso8601String()).toList(),
      'week_day_exceptions': instance.weekDayExceptions,
      'month_day_exceptions': instance.monthDayExceptions,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'start_at': instance.startAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
