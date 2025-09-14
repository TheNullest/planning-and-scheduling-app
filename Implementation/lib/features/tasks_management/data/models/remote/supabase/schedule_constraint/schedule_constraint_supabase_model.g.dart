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
      'date_exceptions':
          instance.exceptionDates.map((e) => e.toIso8601String()).toList(),
      'week_day_exceptions': instance.exceptionWeekDays,
      'month_day_exceptions': instance.exceptionMonthDays,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
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
          exceptionDates: (json['date_exceptions'] as List<dynamic>)
              .map((e) => DateTime.parse(e as String))
              .toList(),
          exceptionWeekDays: (json['week_day_exceptions'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          exceptionMonthDays: (json['month_day_exceptions'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
          enforceScheduleBounds: json['enforce_schedule_bounds'] as bool,
          startDate: json['start_date'] == null
              ? null
              : DateTime.parse(json['start_date'] as String),
          endDate: json['end_date'] == null
              ? null
              : DateTime.parse(json['end_date'] as String),
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
      'date_exceptions':
          instance.exceptionDates.map((e) => e.toIso8601String()).toList(),
      'week_day_exceptions': instance.exceptionWeekDays,
      'month_day_exceptions': instance.exceptionMonthDays,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
