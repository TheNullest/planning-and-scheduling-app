import 'package:zamaan/data/mappers/bases/time_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';

class TimeRangeSupabaseDataSourceImpl
    extends SupabaseDataSource<TimeRangeSupabaseModel, TimeRangeDataMapper> {
  TimeRangeSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
