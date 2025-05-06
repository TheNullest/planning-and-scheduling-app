import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';

abstract class CustomMeasurementUnitDataMapper extends DataMapper<CustomMeasurementUnitEntity,
    CustomMeasurementUnitHiveModel, CustomMeasurementUnitSupabaseModel> {}
