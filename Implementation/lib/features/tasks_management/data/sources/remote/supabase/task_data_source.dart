import 'package:zamaan/data/mappers/bases/task.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';

class TaskSupabaseDataSourceImpl extends SupabaseDataSource<TaskSupabaseModel, TaskDataMapper> {
  TaskSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
