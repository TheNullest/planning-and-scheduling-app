// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_day_time_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledDayTimeSupabaseModelToJson(
        ScheduledDayTimeSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_constraint_id': instance.taskId,
      'day_type': instance.dayType,
      'day_label': instance.dayLabel,
      'repeat_count': instance.repeatCount,
      'time_mode': instance.timeMode,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduledDayTimeSupabaseModelImpl
    _$$ScheduledDayTimeSupabaseModelImplFromJson(Map<String, dynamic> json) =>
        _$ScheduledDayTimeSupabaseModelImpl(
          id: json['id'] as String,
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          taskId: json['schedule_constraint_id'] as String,
          dayType: json['day_type'] as String,
          dayLabel: json['day_label'] as String,
          repeatCount: (json['repeat_count'] as num).toInt(),
          timeMode: json['time_mode'] as String,
          startTime: (json['start_time'] as num).toInt(),
          endTime: (json['end_time'] as num).toInt(),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$ScheduledDayTimeSupabaseModelImplToJson(
        _$ScheduledDayTimeSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_constraint_id': instance.taskId,
      'day_type': instance.dayType,
      'day_label': instance.dayLabel,
      'repeat_count': instance.repeatCount,
      'time_mode': instance.timeMode,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
