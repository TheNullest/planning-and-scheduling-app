// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GoalSupabaseModelToJson(GoalSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refId': instance.refId,
      'ref_type': instance.refType,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'goal_constraint': instance.goalConstraint,
      'minutely_target': instance.minutelyTarget,
      'hourly_target': instance.hourlyTarget,
      'daily_target': instance.dailyTarget,
      'weekly_target': instance.weeklyTarget,
      'monthly_target': instance.monthlyTarget,
      'yearly_target': instance.yearlyTarget,
      'measurement_unit': instance.measurementUnit,
      'custom_measurement_unit_id': instance.customMeasurementUnitId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

_$GoalSupabaseModelImpl _$$GoalSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalSupabaseModelImpl(
      id: json['id'] as String,
      refId: json['refId'] as String,
      refType: json['ref_type'] as String,
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      goalConstraint: json['goal_constraint'] as String,
      minutelyTarget: (json['minutely_target'] as num).toDouble(),
      hourlyTarget: (json['hourly_target'] as num).toDouble(),
      dailyTarget: (json['daily_target'] as num).toDouble(),
      weeklyTarget: (json['weekly_target'] as num).toDouble(),
      monthlyTarget: (json['monthly_target'] as num).toDouble(),
      yearlyTarget: (json['yearly_target'] as num).toDouble(),
      measurementUnit: json['measurement_unit'] as String?,
      customMeasurementUnitId: json['custom_measurement_unit_id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$GoalSupabaseModelImplToJson(
        _$GoalSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refId': instance.refId,
      'ref_type': instance.refType,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'goal_constraint': instance.goalConstraint,
      'minutely_target': instance.minutelyTarget,
      'hourly_target': instance.hourlyTarget,
      'daily_target': instance.dailyTarget,
      'weekly_target': instance.weeklyTarget,
      'monthly_target': instance.monthlyTarget,
      'yearly_target': instance.yearlyTarget,
      'measurement_unit': instance.measurementUnit,
      'custom_measurement_unit_id': instance.customMeasurementUnitId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
