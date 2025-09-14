// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_interval_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledIntervalSupabaseModelToJson(
        ScheduledIntervalSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_time': instance.startTime.toIso8601String(),
      'schedule_constraint_id': instance.taskId,
      'interval_unit': instance.intervalUnit,
      'interval_value': instance.intervalValue,
      'consecutive_occurrences': instance.consecutiveOccurrences,
      'scheduled_time_ids': instance.scheduledTimeIds,
      'repeat_count': instance.repeatCount,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduledIntervalSupabaseModelImpl
    _$$ScheduledIntervalSupabaseModelImplFromJson(Map<String, dynamic> json) =>
        _$ScheduledIntervalSupabaseModelImpl(
          id: json['id'] as String,
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          startTime: DateTime.parse(json['start_time'] as String),
          taskId: json['schedule_constraint_id'] as String,
          intervalUnit: json['interval_unit'] as String,
          intervalValue: (json['interval_value'] as num).toDouble(),
          consecutiveOccurrences:
              (json['consecutive_occurrences'] as num).toInt(),
          scheduledTimeIds: (json['scheduled_time_ids'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          repeatCount: (json['repeat_count'] as num?)?.toInt(),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$ScheduledIntervalSupabaseModelImplToJson(
        _$ScheduledIntervalSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_time': instance.startTime.toIso8601String(),
      'schedule_constraint_id': instance.taskId,
      'interval_unit': instance.intervalUnit,
      'interval_value': instance.intervalValue,
      'consecutive_occurrences': instance.consecutiveOccurrences,
      'scheduled_time_ids': instance.scheduledTimeIds,
      'repeat_count': instance.repeatCount,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
