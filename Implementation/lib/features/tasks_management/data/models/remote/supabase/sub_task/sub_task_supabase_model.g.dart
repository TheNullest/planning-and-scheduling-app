// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SubTaskSupabaseModelToJson(
        SubTaskSupabaseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'priority': instance.priority,
      'status': instance.status,
      'task_id': instance.taskId,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'description': instance.description,
    };

_$SubTaskSupabaseModelImpl _$$SubTaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubTaskSupabaseModelImpl(
      title: json['title'] as String,
      id: json['id'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      taskId: json['task_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      totalSpentTime: json['total_spent_time'] == null
          ? null
          : Duration(microseconds: (json['total_spent_time'] as num).toInt()),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$SubTaskSupabaseModelImplToJson(
        _$SubTaskSupabaseModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'priority': instance.priority,
      'status': instance.status,
      'task_id': instance.taskId,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'description': instance.description,
    };
