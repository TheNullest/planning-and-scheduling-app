// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalSupabaseModelImpl _$$GoalSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalSupabaseModelImpl(
      mainTaskId: json['mainTaskId'] as String,
      measurementUnitId: json['measurementUnitId'] as String,
      measurementValue: (json['measurementValue'] as num).toInt(),
      id: json['id'] as String?,
      subTaskId: json['sub_task_id'] as String?,
      userId: json['user_id'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      perActiveHour: (json['per_active_hour'] as num?)?.toDouble(),
      perActiveDay: (json['per_active_day'] as num?)?.toDouble(),
      perActiveWeek: (json['per_active_week'] as num?)?.toDouble(),
      perActiveMonth: (json['per_active_month'] as num?)?.toDouble(),
      perActiveYear: (json['per_active_year'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GoalSupabaseModelImplToJson(
        _$GoalSupabaseModelImpl instance) =>
    <String, dynamic>{
      'mainTaskId': instance.mainTaskId,
      'measurementUnitId': instance.measurementUnitId,
      'measurementValue': instance.measurementValue,
      'id': instance.id,
      'sub_task_id': instance.subTaskId,
      'user_id': instance.userId,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'per_active_hour': instance.perActiveHour,
      'per_active_day': instance.perActiveDay,
      'per_active_week': instance.perActiveWeek,
      'per_active_month': instance.perActiveMonth,
      'per_active_year': instance.perActiveYear,
    };
