import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';

/// A data source implementation for managing task scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data
/// operations
/// and provides additional methods for specific task-related queries.
abstract class ScheduleConstraintsLocalDataSource<Model> extends BaseDataSource<Model> {
  EResultFuture<List<Model>> getScheduleByDay(DateTime date);
  EResultFuture<Model?> getByTaskId(String taskId);

  // /// Retrieves tasks based on main task IDs and a date range.
  // ///
  // /// [taskIds] - List of main task IDs to filter the tasks.
  // /// [startTime] - Start date for the date range filter.
  // /// [dueDate] - End date for the date range filter.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startTime,
  //   required DateTime? dueDate,
  // });

  // /// Retrieves tasks scheduled before a specific end time.
  // ///
  // /// [dueDate] - The end time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByDueDate(
  //   DateTime dueDate,
  // );

  // /// Retrieves tasks based on a specific main task ID.
  // ///
  // /// [taskId] - The main task ID to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByTaskId(
  //   String taskId,
  // );

  // /// Retrieves tasks based on a repetition type.
  // ///
  // /// [repetitionType] - The repetition type to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByRepetitionType(
  //   RepetitionType repetitionType,
  // );

  // /// Retrieves tasks based on specific times.
  // ///
  // /// [specificTimes] - List of specific times to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getBySpecificTimes(
  //   List<int> specificTimes,
  // );

  // /// Retrieves tasks scheduled after a specific start time.
  // ///
  // /// [startTime] - The start time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByStartTime(
  //   DateTime startTime,
  // );

  // /// Retrieves tasks based on a time unit.
  // ///
  // /// [timeUnit] - The time unit to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model]
  // /// objects.
  // EResultFuture<List<Model>> getByTimeUnit(
  //   IntervalUnit timeUnit,
  // );
}
