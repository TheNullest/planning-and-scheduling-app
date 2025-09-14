// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_activity_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TaskActivitySupabaseModelToJson(
        TaskActivitySupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'ref_type': instance.refType,
      'ref_id': instance.refId,
      'task_status': instance.taskStatus,
      'user_id': instance.userId,
      'variable_tag_ids': instance.variableTagIds,
      'start_time': instance.startedAt.toIso8601String(),
      'end_time': instance.endedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'scheduler_id': instance.schedulerId,
      'scheduler_type': instance.schedulerType,
      'description': instance.description,
    };

_$TaskActivitySupabaseModelImpl _$$TaskActivitySupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskActivitySupabaseModelImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      refType: json['ref_type'] as String,
      refId: json['ref_id'] as String,
      taskStatus: json['task_status'] as String,
      userId: json['user_id'] as String,
      variableTagIds: (json['variable_tag_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startedAt: DateTime.parse(json['start_time'] as String),
      endedAt: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      schedulerId: json['scheduler_id'] as String?,
      schedulerType: json['scheduler_type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TaskActivitySupabaseModelImplToJson(
        _$TaskActivitySupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'ref_type': instance.refType,
      'ref_id': instance.refId,
      'task_status': instance.taskStatus,
      'user_id': instance.userId,
      'variable_tag_ids': instance.variableTagIds,
      'start_time': instance.startedAt.toIso8601String(),
      'end_time': instance.endedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'scheduler_id': instance.schedulerId,
      'scheduler_type': instance.schedulerType,
      'description': instance.description,
    };
