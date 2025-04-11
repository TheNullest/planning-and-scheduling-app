import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/measurement_unit/measurement_unit_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/measurement_unit_data_source.dart';

class MeasurementUnitDataSourceImpl extends SupabaseDataSource<MeasurementUnitSupabaseModel>
    implements MeasurementUnitDataSource<MeasurementUnitSupabaseModel> {
  MeasurementUnitDataSourceImpl({
    required super.mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
