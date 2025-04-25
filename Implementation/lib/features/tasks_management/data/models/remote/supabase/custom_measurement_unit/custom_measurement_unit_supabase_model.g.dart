// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_measurement_unit_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CustomMeasurementUnitSupabaseModelToJson(
        CustomMeasurementUnitSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon_code': instance.iconCode,
      'is_double': instance.isDouble,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$CustomMeasurementUnitSupabaseModelImpl
    _$$CustomMeasurementUnitSupabaseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CustomMeasurementUnitSupabaseModelImpl(
          id: json['id'] as String,
          title: json['title'] as String,
          iconCode: (json['icon_code'] as num).toInt(),
          isDouble: json['is_double'] as bool? ?? false,
          userId: json['user_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$CustomMeasurementUnitSupabaseModelImplToJson(
        _$CustomMeasurementUnitSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon_code': instance.iconCode,
      'is_double': instance.isDouble,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
