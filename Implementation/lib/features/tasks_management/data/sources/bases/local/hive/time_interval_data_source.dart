import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/task_activity.dart';

abstract class TaskActivityDataSource<
        TaskActivityModel extends TaskActivityEntity>
    extends BaseDataSourceAbstraction<TaskActivityModel> {
  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [taskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskActivityModel] objects.
  EResultFuture<List<TaskActivityModel>> getScheduledTimesByTaskId(
    String taskId,
  );

  /// Retrieves a list of [TaskActivityModel] by main task IDs and date range.
  ///
  /// [mainTaskIds] - List of main task IDs to filter the time intervals.
  /// [startAt] - Start date of the date range.
  /// [endAt] - End date of the date range.
  /// Returns a [EResultFuture] containing a list of [TaskActivityModel].
  EResultFuture<List<TaskActivityModel>> getTaskActivityByTaskIdAndDateRange({
    required List<String> mainTaskIds,
    required DateTime? startAt,
    required DateTime? endAt,
  });

  /// Retrieves a list of [TaskActivityModel] by sub task ID.
  ///
  /// [subTaskId] - Sub task ID to filter the time intervals.
  /// Returns a [EResultFuture] containing a list of [TaskActivityModel].
  EResultFuture<List<TaskActivityModel>> getTaskActivityBySubTaskId(
    String subTaskId,
  );
}
