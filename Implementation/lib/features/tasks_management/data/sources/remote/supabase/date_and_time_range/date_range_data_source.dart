import 'package:zamaan/data/mappers/bases/date_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';

class DateRangeSupabaseDataSourceImpl
    extends SupabaseDataSource<DateRangeSupabaseModel, DateRangeDataMapper> {
  DateRangeSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
