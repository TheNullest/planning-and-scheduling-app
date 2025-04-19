// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SubTaskSupabaseModelToJson(
        SubTaskSupabaseModel instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'title': instance.title,
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'priority': instance.priority,
      'status': instance.status,
    };

_$SubTaskSupabaseModelImpl _$$SubTaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubTaskSupabaseModelImpl(
      taskId: json['task_id'] as String,
      title: json['title'] as String,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String?,
      totalSpentTime: json['total_spent_time'] == null
          ? null
          : Duration(microseconds: (json['total_spent_time'] as num).toInt()),
      priority: (json['priority'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubTaskSupabaseModelImplToJson(
        _$SubTaskSupabaseModelImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'title': instance.title,
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'user_id': instance.userId,
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'priority': instance.priority,
      'status': instance.status,
    };
