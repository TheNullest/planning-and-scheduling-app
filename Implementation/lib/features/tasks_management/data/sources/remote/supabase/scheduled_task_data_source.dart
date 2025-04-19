import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/enums/repetition_type.dart';
import 'package:zamaan/core/enums/time_unit.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/scheduled_task.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_task/scheduled_task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/scheduled_task_data_source.dart';

class ScheduledTaskSupabaseDataSourceImpl extends SupabaseDataSource<ScheduledTaskSupabaseModel>
    implements ScheduledTaskDataSource<ScheduledTaskSupabaseModel> {
  ScheduledTaskSupabaseDataSourceImpl({
    required ScheduledTaskMapper mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  })  : _mapper = mapper,
        super(mapper: mapper);
  final ScheduledTaskMapper _mapper;

  @override
  String get selectQuery => '*, specific_times(*)';

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByDueDate(
    DateTime duedate,
  ) async =>
      getAllWithinDateRange(fromDate: DateTime.utc(1900), toDate: duedate, fieldName: 'due_date');

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByRepetitionType(
    RepetitionType repetitionType,
  ) async =>
      getAllByValues(
        [repetitionType.name],
        fieldName: 'repetition_type',
      );

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchBySpecificTimes(
    List<int> specificTimes,
  ) async =>
      const Right([]);

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByStartTime(DateTime startAt) async =>
      getAllWithinDateRange(
        fromDate: startAt,
        toDate: startAt.add(const Duration(days: 1)),
        fieldName: 'will_start_at',
      );

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByTaskId(String taskId) async =>
      getAllByValues([taskId], fieldName: 'task_id');

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      tryCatchEither(
        action: () async {
          final result = await client
              .from('scheduled_task')
              .select()
              .gte('will_start_at', startAt!.toIso8601String())
              .lte('due_date', dueDate!.toIso8601String())
              .or(conditionToString(conditions: taskIds, join: ',', fieldName: 'task_id'));
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<ScheduledTaskSupabaseModel>> getBatchByTimeUnit(TimeUnit timeUnit) async =>
      getAllByValues([timeUnit.name], fieldName: 'time_unit');
}
