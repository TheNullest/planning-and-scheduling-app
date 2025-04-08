// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_interval_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TaskActivitySupabaseModelToJson(
        TaskActivitySupabaseModel instance) =>
    <String, dynamic>{
      'main_task_id': instance.taskId,
      'sub_task_id': instance.subTaskId,
      'start_at': instance.startAt.toIso8601String(),
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'end_at': instance.endAt?.toIso8601String(),
      'spent_time': _durationToJson(instance.spentTime),
    };

_$TaskActivitySupabaseModelImpl _$$TaskActivitySupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskActivitySupabaseModelImpl(
      taskId: json['main_task_id'] as String,
      subTaskId: json['sub_task_id'] as String,
      startAt: DateTime.parse(json['start_at'] as String),
      id: json['id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String?,
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      spentTime: _durationFromJson(json['spent_time']),
    );

Map<String, dynamic> _$$TaskActivitySupabaseModelImplToJson(
        _$TaskActivitySupabaseModelImpl instance) =>
    <String, dynamic>{
      'main_task_id': instance.taskId,
      'sub_task_id': instance.subTaskId,
      'start_at': instance.startAt.toIso8601String(),
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'end_at': instance.endAt?.toIso8601String(),
      'spent_time': _durationToJson(instance.spentTime),
    };
