// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_day_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledDaySupabaseModelToJson(
        ScheduledDaySupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_definition_id': instance.scheduleDefinitionId,
      'day_type': instance.dayType,
      'day_value': instance.dayValue,
      'can_repeat': instance.canRepeat,
      'scheduled_times': instance.scheduledTimes,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$ScheduledDaySupabaseModelImpl _$$ScheduledDaySupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduledDaySupabaseModelImpl(
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
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ScheduledDaySupabaseModelImplToJson(
        _$ScheduledDaySupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'schedule_definition_id': instance.scheduleDefinitionId,
      'day_type': instance.dayType,
      'day_value': instance.dayValue,
      'can_repeat': instance.canRepeat,
      'scheduled_times': instance.scheduledTimes,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
