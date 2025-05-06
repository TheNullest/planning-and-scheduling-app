// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TimeRangeSupabaseModelToJson(
        TimeRangeSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_time': instance.start,
      'end_time': instance.end,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TimeRangeSupabaseModelImpl _$$TimeRangeSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeRangeSupabaseModelImpl(
      id: json['id'] as String,
      parentId: json['parent_id'] as String,
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      start: (json['start_time'] as num).toInt(),
      end: (json['end_time'] as num).toInt(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TimeRangeSupabaseModelImplToJson(
        _$TimeRangeSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_time': instance.start,
      'end_time': instance.end,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
