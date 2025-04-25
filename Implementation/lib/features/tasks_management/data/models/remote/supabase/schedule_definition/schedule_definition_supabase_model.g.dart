// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_definition_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduleDefinitionSupabaseModelToJson(
        ScheduleDefinitionSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'repetition_type': instance.repetitionType,
      'month_days': instance.monthDays,
      'week_days': instance.weekDays,
      'repeat_count': instance.repeatCount,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'scheduled_times': instance.scheduledTimes,
      'scheduled_days': instance.scheduledDays,
      'scheduled_intervals': instance.scheduledIntervals,
      'scheduled_date_range': instance.scheduledDateRange,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduleDefinitionSupabaseModelImpl
    _$$ScheduleDefinitionSupabaseModelImplFromJson(Map<String, dynamic> json) =>
        _$ScheduleDefinitionSupabaseModelImpl(
          id: json['id'] as String,
          taskId: json['task_id'] as String,
          repetitionType: json['repetition_type'] as String,
          monthDays: (json['month_days'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
          weekDays: (json['week_days'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          repeatCount: (json['repeat_count'] as num).toInt(),
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          scheduledTimes: (json['scheduled_times'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          scheduledDays: (json['scheduled_days'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          scheduledIntervals: (json['scheduled_intervals'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          scheduledDateRange: json['scheduled_date_range'] as String?,
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
      'repetition_type': instance.repetitionType,
      'month_days': instance.monthDays,
      'week_days': instance.weekDays,
      'repeat_count': instance.repeatCount,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'scheduled_times': instance.scheduledTimes,
      'scheduled_days': instance.scheduledDays,
      'scheduled_intervals': instance.scheduledIntervals,
      'scheduled_date_range': instance.scheduledDateRange,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
