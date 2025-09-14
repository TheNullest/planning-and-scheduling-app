import 'package:zamaan/data/mappers/bases/scheduled_day_time.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_time/scheduled_day_time_supabase_model.dart';

class ScheduledDayTimeSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduledDayTimeSupabaseModel, ScheduledDayTimeDataMapper> {
  ScheduledDayTimeSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
