// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DateRangeSupabaseModelToJson(
        DateRangeSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'parent_id': instance.parentId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$DateRangeSupabaseModelImpl _$$DateRangeSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DateRangeSupabaseModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      parentId: json['parent_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DateRangeSupabaseModelImplToJson(
        _$DateRangeSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'parent_id': instance.parentId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
