import 'package:zamaan/data/mappers/bases/measurement_unit.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/custom_measurement_unit/custom_measurement_unit_supabase_model.dart';

class CustomMeasurementUnitSupabaseDataSourceImpl extends SupabaseDataSource<
    CustomMeasurementUnitSupabaseModel, CustomMeasurementUnitDataMapper> {
  CustomMeasurementUnitSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
