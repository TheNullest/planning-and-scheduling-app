import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleDefinitionSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduleConstraintSupabaseModel, ScheduleConstraintDataMapper> {
  ScheduleDefinitionSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });

  // @override
  // String get selectQuery => '*, specific_times(*)';

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByDueDate(
  //   DateTime duedate,
  // ) async =>
  //     getAllWithinDateRange(fromDate: DateTime.utc(1900), toDate: duedate, fieldName: 'due_date');

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByRepetitionType(
  //   RepetitionType repetitionType,
  // ) async =>
  //     getAllByValues(
  //       [repetitionType.name],
  //       fieldName: 'repetition_type',
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchBySpecificTimes(
  //   List<int> specificTimes,
  // ) async =>
  //     const Right([]);

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByStartTime(
  //   DateTime startAt,
  // ) async =>
  //     getAllWithinDateRange(
  //       fromDate: startAt,
  //       toDate: startAt.add(const Duration(days: 1)),
  //       fieldName: 'will_start_at',
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByTaskId(String taskId) async =>
  //     getAllByValues([taskId], fieldName: 'task_id');

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startAt,
  //   required DateTime? dueDate,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         final result = await client
  //             .from('schedule_constraints')
  //             .select()
  //             .gte('will_start_at', startAt!.toIso8601String())
  //             .lte('due_date', dueDate!.toIso8601String())
  //             .or(conditionToString(conditions: taskIds, join: ',', fieldName: 'task_id'));
  //         return Right(_dataMapperfromJsonList(result));
  //       },
  //       failureType: FailureType.remote,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBatchByTimeUnit(
  //   IntervalUnit timeUnit,
  // ) async =>
  //     getAllByValues([timeUnit.name], fieldName: 'time_unit');
}
