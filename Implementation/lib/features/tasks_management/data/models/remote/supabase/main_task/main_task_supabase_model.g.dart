// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_task_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainTaskSupabaseModelImpl _$$MainTaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainTaskSupabaseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      colorCode: json['color_code'] as String,
      iconCode: json['icon_code'] as String,
      userId: json['user_id'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      priority: (json['priority'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      totalSpentTime: json['total_spent_time'] == null
          ? null
          : Duration(microseconds: (json['total_spent_time'] as num).toInt()),
      taskSchedulerId: json['task_scheduler_id'] as String?,
    );

Map<String, dynamic> _$$MainTaskSupabaseModelImplToJson(
        _$MainTaskSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'user_id': instance.userId,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'priority': instance.priority,
      'status': instance.status,
      'due_date': instance.dueDate?.toIso8601String(),
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'task_scheduler_id': instance.taskSchedulerId,
    };
