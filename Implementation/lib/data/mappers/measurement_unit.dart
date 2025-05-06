import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/measurement_unit.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';

class CustomMeasurementUnitDataMapperImpl extends CustomMeasurementUnitDataMapper {
  @override
  CustomMeasurementUnitEntity toEntityFromHive(CustomMeasurementUnitHiveModel model) =>
      tryCatchSimple<CustomMeasurementUnitEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  CustomMeasurementUnitEntity toEntityFromSupabase(
    CustomMeasurementUnitSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<CustomMeasurementUnitEntity>(
        action: () => CustomMeasurementUnitEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          title: model.title,
          iconCode: model.iconCode,
          isDouble: model.isDouble,
        ),
        failureType: FailureType.local,
      );

  @override
  CustomMeasurementUnitHiveModel toHiveModel(CustomMeasurementUnitEntity entity) =>
      tryCatchSimple<CustomMeasurementUnitHiveModel>(
        action: () => CustomMeasurementUnitHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  CustomMeasurementUnitSupabaseModel toSupabaseModel(CustomMeasurementUnitEntity entity) =>
      tryCatchSimple<CustomMeasurementUnitSupabaseModel>(
        action: () => CustomMeasurementUnitSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<CustomMeasurementUnitSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(CustomMeasurementUnitSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<CustomMeasurementUnitSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  CustomMeasurementUnitSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => CustomMeasurementUnitSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(CustomMeasurementUnitSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
