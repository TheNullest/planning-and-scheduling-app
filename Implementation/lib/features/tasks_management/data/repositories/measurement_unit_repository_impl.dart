import 'package:zamaan/data/mappers/mapper.dart';

import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/measurement_unit_data_source.dart';

class CustomeMeasurementUnitRepositoryImpl extends BaseRepositoryImpl<
    CustomMeasurementUnitEntity,
    CustomMeasurementUnitHiveModel,
    CustomMeasurementUnitSupabaseModel,
    CustomeMeasurementUnitLocalDataSource<CustomMeasurementUnitHiveModel>,
    SupabaseDataSource<CustomMeasurementUnitSupabaseModel>,
    Mapper<CustomMeasurementUnitEntity, CustomMeasurementUnitHiveModel,
        CustomMeasurementUnitSupabaseModel>> implements CustomeMeasurementUnitRepository {
  CustomeMeasurementUnitRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  });
}
