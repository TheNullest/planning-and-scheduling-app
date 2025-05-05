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
      'task_status': instance.taskStatus,
      'priority': instance.priority,
      'created_at': instance.createdAt.toIso8601String(),
      'archived': instance.archived,
      'category_ids': instance.categoryIds,
      'fixed_tag_ids': instance.fixedTagIds,
      'sub_tsk_ids': instance.subTaskIds,
      'user_id': instance.userId,
      'total_spent_time': instance.totalSpentTime.inMicroseconds,
      'scheduled_interval_ids': instance.scheduledIntervalIds,
      'scheduled_day_ids': instance.scheduledDayIds,
      'scheduled_Instance_ids': instance.scheduledInstanceIds,
      'schedule_constraint_Id': instance.scheduleConstraintId,
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TaskSupabaseModelImpl _$$TaskSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskSupabaseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      colorCode: (json['color_code'] as num).toInt(),
      iconCode: (json['icon_code'] as num).toInt(),
      taskStatus: json['task_status'] as String,
      priority: json['priority'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      archived: json['archived'] as bool,
      categoryIds: (json['category_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fixedTagIds: (json['fixed_tag_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subTaskIds: (json['sub_tsk_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userId: json['user_id'] as String,
      totalSpentTime:
          Duration(microseconds: (json['total_spent_time'] as num).toInt()),
      scheduledIntervalIds: (json['scheduled_interval_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      scheduledDayIds: (json['scheduled_day_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      scheduledInstanceIds: (json['scheduled_Instance_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      scheduleConstraintId: json['schedule_constraint_Id'] as String?,
      description: json['description'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TaskSupabaseModelImplToJson(
        _$TaskSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'task_status': instance.taskStatus,
      'priority': instance.priority,
      'created_at': instance.createdAt.toIso8601String(),
      'archived': instance.archived,
      'category_ids': instance.categoryIds,
      'fixed_tag_ids': instance.fixedTagIds,
      'sub_tsk_ids': instance.subTaskIds,
      'user_id': instance.userId,
      'total_spent_time': instance.totalSpentTime.inMicroseconds,
      'scheduled_interval_ids': instance.scheduledIntervalIds,
      'scheduled_day_ids': instance.scheduledDayIds,
      'scheduled_Instance_ids': instance.scheduledInstanceIds,
      'schedule_constraint_Id': instance.scheduleConstraintId,
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
