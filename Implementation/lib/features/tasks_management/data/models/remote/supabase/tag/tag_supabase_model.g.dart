// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TagSupabaseModelToJson(TagSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TagSupabaseModelImpl _$$TagSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TagSupabaseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      colorCode: (json['color_code'] as num).toInt(),
      iconCode: (json['icon_code'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String,
      taskId: json['task_id'] as String?,
      description: json['description'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TagSupabaseModelImplToJson(
        _$TagSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
