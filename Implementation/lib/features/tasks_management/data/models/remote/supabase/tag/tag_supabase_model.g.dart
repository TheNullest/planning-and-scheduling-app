// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagSupabaseModelImpl _$$TagSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TagSupabaseModelImpl(
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
    );

Map<String, dynamic> _$$TagSupabaseModelImplToJson(
        _$TagSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'user_id': instance.userId,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
