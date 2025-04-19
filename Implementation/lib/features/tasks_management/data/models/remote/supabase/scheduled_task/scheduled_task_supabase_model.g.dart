// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_task_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledTaskSupabaseModelToJson(
        ScheduledTaskSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main_task_id': instance.taskId,
      'repetition_type': instance.repetitionType,
      'time_unit': instance.timeUnit,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'goal_id': instance.goalId,
      'will_start_at': instance.willStartAt?.toIso8601String(),
      'due_at': instance.dueDate?.toIso8601String(),
    };

_$ScheduledTaskSupabaseModelImpl _$$ScheduledTaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduledTaskSupabaseModelImpl(
      id: json['id'] as String?,
      taskId: json['main_task_id'] as String,
      repetitionType: json['repetition_type'] as String,
      specificTimes: _extractIds(
          json['scheduled_task_specific_times'] as Map<String, dynamic>),
      timeUnit: json['time_unit'] as String,
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
      dueDate: json['due_at'] == null
          ? null
          : DateTime.parse(json['due_at'] as String),
    );

Map<String, dynamic> _$$ScheduledTaskSupabaseModelImplToJson(
        _$ScheduledTaskSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main_task_id': instance.taskId,
      'repetition_type': instance.repetitionType,
      'time_unit': instance.timeUnit,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'goal_id': instance.goalId,
      'will_start_at': instance.willStartAt?.toIso8601String(),
      'due_at': instance.dueDate?.toIso8601String(),
    };
