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
      'goal_targets': instance.goalTargets
          .map((k, e) => MapEntry(_$RepetitionTypeEnumMap[k]!, e)),
      'measurement_unit': instance.measurementUnit,
      'custom_measurement_unit_id': instance.customMeasurementUnitId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };

const _$RepetitionTypeEnumMap = {
  RepetitionType.minutely: 'minutely',
  RepetitionType.hourly: 'hourly',
  RepetitionType.weekly: 'weekly',
  RepetitionType.daily: 'daily',
  RepetitionType.weekdays: 'weekdays',
  RepetitionType.monthly: 'monthly',
  RepetitionType.yearly: 'yearly',
  RepetitionType.custom: 'custom',
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
      goalTargets: (json['goal_targets'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$RepetitionTypeEnumMap, k), e),
      ),
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
      'goal_targets': instance.goalTargets
          .map((k, e) => MapEntry(_$RepetitionTypeEnumMap[k]!, e)),
      'measurement_unit': instance.measurementUnit,
      'custom_measurement_unit_id': instance.customMeasurementUnitId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'description': instance.description,
    };
