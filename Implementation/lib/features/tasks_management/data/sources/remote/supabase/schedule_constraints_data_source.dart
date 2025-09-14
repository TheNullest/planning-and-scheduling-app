import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleConstraintsSupabaseDataSourceImpl
    extends SupabaseDataSource<ScheduleConstraintsSupabaseModel, ScheduleConstraintsDataMapper> {
  ScheduleConstraintsSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });

  // @override
  // String get selectQuery => '*, specific_times(*)';

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByDueDate(
  //   DateTime duedate,
  // ) async =>
  //     getWithinDateRange(fromDate: DateTime.utc(1900), toDate: duedate, fieldName: 'due_date');

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByRepetitionType(
  //   RepetitionType repetitionType,
  // ) async =>
  //     getByValues(
  //       [repetitionType.name],
  //       fieldName: 'repetition_type',
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getBySpecificTimes(
  //   List<int> specificTimes,
  // ) async =>
  //     const Right([]);

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByStartTime(
  //   DateTime startTime,
  // ) async =>
  //     getWithinDateRange(
  //       fromDate: startTime,
  //       toDate: startTime.add(const Duration(days: 1)),
  //       fieldName: 'will_start_time',
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByTaskId(String taskId) async =>
  //     getByValues([taskId], fieldName: 'task_id');

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startTime,
  //   required DateTime? dueDate,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         final result = await client
  //             .from('schedule_constraints')
  //             .select()
  //             .gte('will_start_time', startTime!.toIso8601String())
  //             .lte('due_date', dueDate!.toIso8601String())
  //             .or(conditionToString(conditions: taskIds, join: ',', fieldName: 'task_id'));
  //         return Right(_dataMapperfromJsonList(result));
  //       },
  //       failureType: FailureType.remote,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionSupabaseModel>> getByTimeUnit(
  //   IntervalUnit timeUnit,
  // ) async =>
  //     getByValues([timeUnit.name], fieldName: 'time_unit');
}
