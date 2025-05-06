import 'package:zamaan/data/mappers/bases/scheduled_instance.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_instance/scheduled_instance_supabase_model.dart';

class ScheduledInstanceSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduledInstanceSupabaseModel, ScheduledInstanceDataMapper> {
  ScheduledInstanceSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
