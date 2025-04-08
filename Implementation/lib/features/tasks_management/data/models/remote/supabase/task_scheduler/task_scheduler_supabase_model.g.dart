// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_scheduler_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TaskSchedulerSupabaseModelToJson(
        TaskSchedulerSupabaseModel instance) =>
    <String, dynamic>{
      'main_task_id': instance.taskId,
      'repetition_type': instance.repetitionType,
      'id': instance.id,
      'time_unit': instance.timeUnit,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'goal_id': instance.goalId,
      'will_start_at': instance.willStartAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
    };

_$TaskSchedulerSupabaseModelImpl _$$TaskSchedulerSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskSchedulerSupabaseModelImpl(
      taskId: json['main_task_id'] as String,
      repetitionType: (json['repetition_type'] as num).toInt(),
      id: json['id'] as String?,
      timeUnit: (json['time_unit'] as num).toInt(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String?,
      goalId: json['goal_id'] as String?,
      willStartAt: json['will_start_at'] == null
          ? null
          : DateTime.parse(json['will_start_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
    );

Map<String, dynamic> _$$TaskSchedulerSupabaseModelImplToJson(
        _$TaskSchedulerSupabaseModelImpl instance) =>
    <String, dynamic>{
      'main_task_id': instance.taskId,
      'repetition_type': instance.repetitionType,
      'id': instance.id,
      'time_unit': instance.timeUnit,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'goal_id': instance.goalId,
      'will_start_at': instance.willStartAt?.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
    };
