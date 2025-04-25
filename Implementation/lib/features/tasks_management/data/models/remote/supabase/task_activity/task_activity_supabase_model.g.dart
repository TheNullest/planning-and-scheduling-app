// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_activity_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TaskActivitySupabaseModelToJson(
        TaskActivitySupabaseModel instance) =>
    <String, dynamic>{
      'ref_type': instance.refType,
      'ref_id': instance.refId,
      'id': instance.id,
      'task_status': instance.taskStatus,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'variable_tags': instance.variableTags,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'schedule_definition_id': instance.scheduleDefinitionId,
    };

_$TaskActivitySupabaseModelImpl _$$TaskActivitySupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskActivitySupabaseModelImpl(
      refType: json['ref_type'] as String,
      refId: json['ref_id'] as String,
      id: json['id'] as String,
      taskStatus: json['task_status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String,
      variableTags: (json['variable_tags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      scheduleDefinitionId: json['schedule_definition_id'] as String?,
    );

Map<String, dynamic> _$$TaskActivitySupabaseModelImplToJson(
        _$TaskActivitySupabaseModelImpl instance) =>
    <String, dynamic>{
      'ref_type': instance.refType,
      'ref_id': instance.refId,
      'id': instance.id,
      'task_status': instance.taskStatus,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'variable_tags': instance.variableTags,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
      'schedule_definition_id': instance.scheduleDefinitionId,
    };
