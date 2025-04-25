import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task_activity.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_activity_data_source.dart';

class TaskActivitySupabaseDataSourceImpl extends SupabaseDataSource<TaskActivitySupabaseModel>
    implements TaskActivityDataSource<TaskActivitySupabaseModel> {
  TaskActivitySupabaseDataSourceImpl({
    required TaskActivityMapper mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  })  : _mapper = mapper,
        super(mapper: mapper);

  final TaskActivityMapper _mapper;

  @override
  EResultFuture<List<TaskActivitySupabaseModel>> getBatchByTaskId(String taskId) async =>
      getAllByValues([taskId], fieldName: 'task_id');

  @override
  EResultFuture<List<TaskActivitySupabaseModel>> getBatchBySubTaskId(String subTaskId) async =>
      getAllByValues([subTaskId], fieldName: 'sub_task_id');

  @override
  EResultFuture<List<TaskActivitySupabaseModel>> getBatchByTaskIdAndDateRange({
    required String taskId,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      tryCatchEither(
        action: () async {
          final result = await client
              .from('schedule_definition')
              .select()
              .eq('task_id', taskId)
              .gte('will_start_at', startAt!.toIso8601String())
              .lte('due_date', dueDate!.toIso8601String());
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );
}
