import 'package:zamaan/data/mappers/bases/scheduled_occurrence.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_occurrence/scheduled_occurrence_supabase_model.dart';

class ScheduledOccurrenceSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduledOccurrenceSupabaseModel, ScheduledOccurrenceDataMapper> {
  ScheduledOccurrenceSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
