import 'package:zamaan/data/sources/base_data_source.dart';

abstract class TaskActivityLocalDataSource<Model> extends BaseDataSource<Model> {
  // /// Retrieves tasks based on a specific main task ID.
  // ///
  // /// [taskId] - The main task ID to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [Model] objects.
  // EResultFuture<List<Model>> getBatchByTaskId(
  //   String taskId,
  // );

  // /// Retrieves a list of [Model] by main task IDs and date range.
  // ///
  // /// [taskId] - List of main task IDs to filter the time intervals.
  // /// [startAt] - Start date of the date range.
  // /// [dueDate] - End date of the date range.
  // /// Returns a [EResultFuture] containing a list of [Model].
  // EResultFuture<List<Model>> getBatchByTaskIdAndDateRange({
  //   required String taskId,
  //   required DateTime? startAt,
  //   required DateTime? dueDate,
  // });

  // /// Retrieves a list of [Model] by sub task ID.
  // ///
  // /// [subTaskId] - Sub task ID to filter the time intervals.
  // /// Returns a [EResultFuture] containing a list of [Model].
  // EResultFuture<List<Model>> getBatchBySubTaskId(
  //   String subTaskId,
  // );
}
