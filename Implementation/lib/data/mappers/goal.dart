import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';

class GoalMapper extends Mapper<GoalEntity, GoalHiveModel, GoalSupabaseModel> {
  @override
  GoalEntity toEntityFromHive(GoalHiveModel model) => tryCatchSimple<GoalEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  GoalEntity toEntityFromSupabase(GoalSupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<GoalEntity>(
        action: () => GoalEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          refType: ReferenceType.fromName(model.refType),
          refId: model.refId,
          customMeasurementUnitId: model.customMeasurementUnitId,
          measurementUnit: model.measurementUnit != null
              ? MeasurementUnit.fromName(model.measurementUnit!)
              : null,
          goalConstraint: GoalConstraint.fromName(model.goalConstraint),
          minutelyTarget: model.minutelyTarget,
          hourlyTarget: model.hourlyTarget,
          dailyTarget: model.dailyTarget,
          weeklyTarget: model.weeklyTarget,
          monthlyTarget: model.monthlyTarget,
          yearlyTarget: model.yearlyTarget,
        ),
        failureType: FailureType.local,
      );

  @override
  GoalHiveModel toHiveModel(GoalEntity entity) => tryCatchSimple<GoalHiveModel>(
        action: () => GoalHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  GoalSupabaseModel toSupabaseModel(GoalEntity entity) => tryCatchSimple<GoalSupabaseModel>(
        action: () => GoalSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<GoalSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(GoalSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<GoalSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  GoalSupabaseModel fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => GoalSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(GoalSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
