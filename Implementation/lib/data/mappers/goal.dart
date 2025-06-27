import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/goal.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';

class GoalDataMapperImpl extends GoalDataMapper {
  @override
  GoalEntity toEntityFromHive(GoalHiveModel model) {
    try {
      return GoalEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        refType: model.refType,
        refId: model.refId,
        customMeasurementUnitId: model.customMeasurementUnitId,
        measurementUnit: model.measurementUnit,
        goalConstraint: model.goalConstraint,
        goalTargets: model.goalTargets,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  GoalEntity toEntityFromSupabase(
    GoalSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return GoalEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        refType: ReferenceType.fromName(model.refType),
        refId: model.refId,
        customMeasurementUnitId: model.customMeasurementUnitId,
        measurementUnit: MeasurementUnit.fromName(model.measurementUnit!),
        goalConstraint: GoalConstraint.fromName(model.goalConstraint),
        goalTargets: model.goalTargets,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  GoalHiveModel toHiveModel(GoalEntity entity) {
    try {
      return GoalHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  GoalSupabaseModel toSupabaseModel(GoalEntity entity) {
    try {
      return GoalSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<GoalSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(GoalSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<GoalSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  GoalSupabaseModel fromJson(Map<String, dynamic> json) {
    try {
      return GoalSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(GoalSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
