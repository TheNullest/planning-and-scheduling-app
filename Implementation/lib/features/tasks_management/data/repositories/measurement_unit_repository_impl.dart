import 'package:zamaan/data/mappers/measurement_unit.dart';
import 'package:zamaan/domain/entities/measurement_unit.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/measurement_unit/measurement_unit_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/measurement_unit_data_source.dart';

class MeasurementUnitRepositoryImpl extends BaseRepositoryImpl<
    MeasurementUnitEntity,
    MeasurementUnitHiveModel,
    MeasurementUnitSupabaseModel,
    MeasurementUnitDataSource<MeasurementUnitHiveModel>,
    MeasurementUnitDataSource<MeasurementUnitSupabaseModel>,
    MeasurementUnitMapper> implements MeasurementUnitRepository {
  MeasurementUnitRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  });
}
