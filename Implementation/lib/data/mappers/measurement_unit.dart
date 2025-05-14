import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/measurement_unit.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';

class CustomMeasurementUnitDataMapperImpl extends CustomMeasurementUnitDataMapper {
  @override
  CustomMeasurementUnitEntity toEntityFromHive(CustomMeasurementUnitHiveModel model) {
    try {
      return CustomMeasurementUnitEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        iconCode: model.iconCode,
        isDouble: model.isDouble,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  CustomMeasurementUnitEntity toEntityFromSupabase(
    CustomMeasurementUnitSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return CustomMeasurementUnitEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        iconCode: model.iconCode,
        isDouble: model.isDouble,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  CustomMeasurementUnitHiveModel toHiveModel(CustomMeasurementUnitEntity entity) {
    try {
      return CustomMeasurementUnitHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  CustomMeasurementUnitSupabaseModel toSupabaseModel(CustomMeasurementUnitEntity entity) {
    try {
      return CustomMeasurementUnitSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<CustomMeasurementUnitSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(CustomMeasurementUnitSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<CustomMeasurementUnitSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  CustomMeasurementUnitSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return CustomMeasurementUnitSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(CustomMeasurementUnitSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
