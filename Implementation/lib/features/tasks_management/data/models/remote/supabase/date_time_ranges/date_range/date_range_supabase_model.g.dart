// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DateRangeSupabaseModelToJson(
        DateRangeSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };

_$DateRangeSupabaseModelImpl _$$DateRangeSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DateRangeSupabaseModelImpl(
      id: json['id'] as String,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$DateRangeSupabaseModelImplToJson(
        _$DateRangeSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
