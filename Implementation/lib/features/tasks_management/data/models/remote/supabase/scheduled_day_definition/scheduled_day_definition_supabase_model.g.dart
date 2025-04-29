// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_day_definition_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledDayDefinitionSupabaseModelToJson(
        ScheduledDayDefinitionSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_definition_id': instance.scheduleDefinitionId,
      'day_type': instance.dayType,
      'day_value': instance.dayValue,
      'can_repeat': instance.canRepeat,
      'scheduled_times': instance.scheduledTimes,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduledDayDefinitionSupabaseModelImpl
    _$$ScheduledDayDefinitionSupabaseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ScheduledDayDefinitionSupabaseModelImpl(
          id: json['id'] as String,
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          scheduleDefinitionId: json['schedule_definition_id'] as String,
          dayType: json['day_type'] as String,
          dayValue: json['day_value'] as String,
          canRepeat: json['can_repeat'] as bool,
          scheduledTimes: (json['scheduled_times'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          enforceScheduleBounds: json['enforce_schedule_bounds'] as bool,
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$ScheduledDayDefinitionSupabaseModelImplToJson(
        _$ScheduledDayDefinitionSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_definition_id': instance.scheduleDefinitionId,
      'day_type': instance.dayType,
      'day_value': instance.dayValue,
      'can_repeat': instance.canRepeat,
      'scheduled_times': instance.scheduledTimes,
      'enforce_schedule_bounds': instance.enforceScheduleBounds,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
