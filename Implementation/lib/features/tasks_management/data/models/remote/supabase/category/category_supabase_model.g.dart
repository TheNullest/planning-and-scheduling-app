// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CategorySupabaseModelToJson(
        CategorySupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CategorySupabaseModelImpl _$$CategorySupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategorySupabaseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      colorCode: (json['color_code'] as num).toInt(),
      iconCode: (json['icon_code'] as num).toInt(),
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategorySupabaseModelImplToJson(
        _$CategorySupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color_code': instance.colorCode,
      'icon_code': instance.iconCode,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
