import 'package:zamaan/data/mappers/bases/scheduled_interval.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';

class ScheduledIntervalSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduledIntervalSupabaseModel, ScheduledIntervalDataMapper> {
  ScheduledIntervalSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
