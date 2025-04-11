import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/measurement_unit/measurement_unit_supabase_model.dart';

class MeasurementUnitMapper
    extends Mapper<MeasurementUnitEntity, MeasurementUnitHiveModel, MeasurementUnitSupabaseModel> {
  @override
  MeasurementUnitEntity toEntityFromHive(MeasurementUnitHiveModel model) =>
      tryCatchSimple<MeasurementUnitEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  MeasurementUnitEntity toEntityFromSupabase(MeasurementUnitSupabaseModel model) =>
      tryCatchSimple<MeasurementUnitEntity>(
        action: () => MeasurementUnitEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          title: model.title,
          iconCode: model.iconCode,
        ),
        failureType: FailureType.local,
      );

  @override
  MeasurementUnitHiveModel toHiveModel(MeasurementUnitEntity entity) =>
      tryCatchSimple<MeasurementUnitHiveModel>(
        action: () => MeasurementUnitHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  MeasurementUnitSupabaseModel toSupabaseModel(MeasurementUnitEntity entity) =>
      tryCatchSimple<MeasurementUnitSupabaseModel>(
        action: () => MeasurementUnitSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<MeasurementUnitSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(MeasurementUnitSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<MeasurementUnitSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  MeasurementUnitSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => MeasurementUnitSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(MeasurementUnitSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
