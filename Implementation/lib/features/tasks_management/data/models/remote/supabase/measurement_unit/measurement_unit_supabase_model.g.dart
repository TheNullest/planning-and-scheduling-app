// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_unit_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$MeasurementUnitSupabaseModelToJson(
        MeasurementUnitSupabaseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'icon_code': instance.iconCode,
      'is_double': instance.isDouble,
      'user_id': instance.userId,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$MeasurementUnitSupabaseModelImpl _$$MeasurementUnitSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeasurementUnitSupabaseModelImpl(
      title: json['title'] as String,
      id: json['id'] as String?,
      iconCode: json['icon_code'] as String,
      isDouble: json['is_double'] as bool? ?? false,
      userId: json['user_id'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MeasurementUnitSupabaseModelImplToJson(
        _$MeasurementUnitSupabaseModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'icon_code': instance.iconCode,
      'is_double': instance.isDouble,
      'user_id': instance.userId,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
