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
      'schedule_constraint_id': instance.scheduleConstraintId,
      'interval_unit': instance.intervalUnit,
      'interval_value': instance.intervalValue,
      'scheduled_time_ids': instance.scheduledTimeIds,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
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
          scheduleConstraintId: json['schedule_constraint_id'] as String,
          intervalUnit: json['interval_unit'] as String,
          intervalValue: (json['interval_value'] as num).toDouble(),
          scheduledTimeIds: (json['scheduled_time_ids'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          enforceScheduleBounds: json['enforce_schedule_bounds'] as bool,
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
      'schedule_constraint_id': instance.scheduleConstraintId,
      'interval_unit': instance.intervalUnit,
      'interval_value': instance.intervalValue,
      'scheduled_time_ids': instance.scheduledTimeIds,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'repeat_count': instance.repeatCount,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
