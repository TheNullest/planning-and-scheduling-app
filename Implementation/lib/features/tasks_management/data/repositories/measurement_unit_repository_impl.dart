import 'package:zamaan/data/mappers/bases/measurement_unit.dart';

import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/measurement_unit_data_source.dart';

class CustomMeasurementUnitRepositoryImpl extends BaseRepositoryImpl<
    CustomMeasurementUnitEntity,
    CustomMeasurementUnitHiveModel,
    CustomMeasurementUnitSupabaseModel,
    CustomMeasurementUnitLocalDataSource<CustomMeasurementUnitHiveModel>,
    SupabaseDataSource<CustomMeasurementUnitSupabaseModel, CustomMeasurementUnitDataMapper>,
    CustomMeasurementUnitDataMapper> implements CustomMeasurementUnitRepository {
  CustomMeasurementUnitRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  });
}
