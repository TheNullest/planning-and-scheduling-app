import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/enums/repetition_type_enum.dart';
import 'package:zamaan/core/enums/time_unit_enum.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task_scheduler.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_scheduler/task_scheduler_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_scheduler_data_source.dart';

class TaskSchedulerSupabaseDataSourceImpl extends SupabaseDataSource<TaskSchedulerSupabaseModel>
    implements TaskSchedulerDataSource<TaskSchedulerSupabaseModel> {
  TaskSchedulerSupabaseDataSourceImpl({
    required TaskSchedulerMapper mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  })  : _mapper = mapper,
        super(mapper: mapper);
  final TaskSchedulerMapper _mapper;

  @override
  String get selectQuery => '*, specific_times(*)';

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByDueDate(
    DateTime duedate,
  ) async =>
      getAllWithinDateRange(fromDate: DateTime.utc(1900), toDate: duedate, fieldName: 'due_date');

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByRepetitionType(
    RepetitionType repetitionType,
  ) async =>
      getAllByValues(
        [repetitionType.name],
        fieldName: 'repetition_type',
      );

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchBySpecificTimes(
    List<int> specificTimes,
  ) async =>
      const Right([]);

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByStartTime(DateTime startAt) async =>
      getAllWithinDateRange(
        fromDate: startAt,
        toDate: startAt.add(const Duration(days: 1)),
        fieldName: 'will_start_at',
      );

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByTaskId(String taskId) async =>
      getAllByValues([taskId], fieldName: 'task_id');

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      tryCatchEither(
        action: () async {
          final result = await client
              .from('task_scheduler')
              .select()
              .gte('will_start_at', startAt!.toIso8601String())
              .lte('due_date', dueDate!.toIso8601String())
              .or(conditionToString(conditions: taskIds, join: ',', fieldName: 'task_id'));
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<TaskSchedulerSupabaseModel>> getBatchByTimeUnit(TimeUnit timeUnit) async =>
      getAllByValues([timeUnit.name], fieldName: 'time_unit');
}
