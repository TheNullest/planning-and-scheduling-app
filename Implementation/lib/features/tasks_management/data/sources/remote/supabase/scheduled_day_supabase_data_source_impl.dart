import 'package:zamaan/data/mappers/bases/scheduled_day.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';

class ScheduledDaySupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduledDaySupabaseModel, ScheduledDayDataMapper> {
  ScheduledDaySupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
