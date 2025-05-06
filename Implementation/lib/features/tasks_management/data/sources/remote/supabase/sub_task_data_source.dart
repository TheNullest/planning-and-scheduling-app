import 'package:zamaan/data/mappers/bases/sub_task.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';

class SubTaskSupabaseDataSourceImpl
    extends SupabaseDataSource<SubTaskSupabaseModel, SubTaskDataMapper> {
  SubTaskSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
