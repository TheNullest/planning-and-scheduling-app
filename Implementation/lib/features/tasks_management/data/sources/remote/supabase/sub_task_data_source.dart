import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/sub_task_data_source.dart';

class SubTaskSupabaseDataSourceImpl extends SupabaseDataSource<SubTaskSupabaseModel>
    implements SubTaskDataSource<SubTaskSupabaseModel> {
  SubTaskSupabaseDataSourceImpl({
    required super.mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });

  @override
  EResultFuture<List<SubTaskSupabaseModel>> getBatchByPriority(Priority priority) async =>
      getAllByValues(
        [priority.name],
        fieldName: priority.name,
      );

  @override
  EResultFuture<List<SubTaskSupabaseModel>> getBatchByStatus(TaskStatus status) async =>
      getAllByValues(
        [status.name],
        fieldName: status.name,
      );

  @override
  EResultFuture<List<SubTaskSupabaseModel>> getBatchByTaskId(String taskId) async => getAllByValues(
        [taskId],
        fieldName: 'task_id',
      );
}
