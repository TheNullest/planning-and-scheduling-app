import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';

/// A data source implementation for managing task scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data
/// operations
/// and provides additional methods for specific task-related queries.
abstract class ScheduleConstraintsLocalDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getBatchSchedulesByDay(DateTime date);
  EResultFuture<Model?> getByTaskId(String taskId);

  // /// Retrieves tasks based on main task IDs and a date range.
  // ///
  // /// [taskIds] - List of main task IDs to filter the tasks.
  // /// [startAt] - Start date for the date range filter.
  // /// [dueDate] - End date for the date range filter.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startAt,
  //   required DateTime? dueDate,
  // });

  // /// Retrieves tasks scheduled before a specific end time.
  // ///
  // /// [dueDate] - The end time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByDueDate(
  //   DateTime dueDate,
  // );

  // /// Retrieves tasks based on a specific main task ID.
  // ///
  // /// [taskId] - The main task ID to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByTaskId(
  //   String taskId,
  // );

  // /// Retrieves tasks based on a repetition type.
  // ///
  // /// [repetitionType] - The repetition type to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByRepetitionType(
  //   RepetitionType repetitionType,
  // );

  // /// Retrieves tasks based on specific times.
  // ///
  // /// [specificTimes] - List of specific times to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchBySpecificTimes(
  //   List<int> specificTimes,
  // );

  // /// Retrieves tasks scheduled after a specific start time.
  // ///
  // /// [startAt] - The start time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByStartTime(
  //   DateTime startAt,
  // );

  // /// Retrieves tasks based on a time unit.
  // ///
  // /// [timeUnit] - The time unit to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBatchByTimeUnit(
  //   IntervalUnit timeUnit,
  // );
}
