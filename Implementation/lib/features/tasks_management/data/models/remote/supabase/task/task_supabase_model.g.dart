// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TaskSupabaseModelToJson(TaskSupabaseModel instance) =>
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
      'archived': instance.archived,
      'due_date': instance.dueDate?.toIso8601String(),
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'task_scheduler_id': instance.taskSchedulerId,
    };

_$TaskSupabaseModelImpl _$$TaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskSupabaseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      colorCode: json['color_code'] as String,
      iconCode: json['icon_code'] as String,
      categoryIds: _categories(json['task_categories'] as Map<String, dynamic>),
      tagIds: _tags(json['task_tags'] as Map<String, dynamic>),
      userId: json['user_id'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      priority: (json['priority'] as num?)?.toInt(),
      archived: json['archived'] as bool?,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      totalSpentTime: json['total_spent_time'] == null
          ? null
          : Duration(microseconds: (json['total_spent_time'] as num).toInt()),
      taskSchedulerId: json['task_scheduler_id'] as String?,
    );

Map<String, dynamic> _$$TaskSupabaseModelImplToJson(
        _$TaskSupabaseModelImpl instance) =>
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
      'archived': instance.archived,
      'due_date': instance.dueDate?.toIso8601String(),
      'total_spent_time': instance.totalSpentTime?.inMicroseconds,
      'task_scheduler_id': instance.taskSchedulerId,
    };
