import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/time_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/time_interval_data_source.dart';

class HiveTaskActivityDataSourceImpl
    extends BaseLocalDataSourceAbstraction<TaskActivityHiveModel>
    implements TaskActivityDataSource<TaskActivityHiveModel> {
  // Just to add the testability feature to the class,
  // we need to inject the [HiveInitializer<TaskActivityHiveModel>] like this
  HiveTaskActivityDataSourceImpl({
    HiveServices<TaskActivityHiveModel>? hiveBox,
  })  : _hiveBox =
            hiveBox ?? serviceLocator<HiveServices<TaskActivityHiveModel>>(),
        _boxName = HiveBoxConstants.taskActivitysBox,
        super(
          HiveBoxConstants.taskActivitysBox,
          hiveServices: hiveBox,
        );
  final String _boxName;
  final HiveServices<TaskActivityHiveModel> _hiveBox;

  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [taskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskActivityHiveModel] objects.
  @override
  EResultFuture<List<TaskActivityHiveModel>> getScheduledTimesByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves a list of [TaskActivityHiveModel] by main task IDs and date range.
  ///
  /// [mainTaskIds] - List of main task IDs to filter the time intervals.
  /// [startAt] - Start date of the date range.
  /// [endAt] - End date of the date range.
  /// Returns a [EResultFuture] containing a list of [TaskActivityHiveModel].
  @override
  EResultFuture<List<TaskActivityHiveModel>>
      getTaskActivityByTaskIdAndDateRange({
    required List<String> mainTaskIds,
    required DateTime? startAt,
    required DateTime? endAt,
  }) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async {
        return box.values.where((taskActivity) {
          final isInDateRange =
              (startAt == null || taskActivity.startAt.isAfter(startAt)) &&
                  (endAt == null || taskActivity.endAt!.isBefore(endAt));
          final isInTaskIds = mainTaskIds.contains(taskActivity.taskId);
          return isInDateRange && isInTaskIds;
        }).toList();
      },
      boxName: _boxName,
    );
  }

  /// Retrieves a list of [TaskActivityHiveModel] by sub task ID.
  ///
  /// [subTaskId] - Sub task ID to filter the time intervals.
  /// Returns a [EResultFuture] containing a list of [TaskActivityHiveModel].
  @override
  EResultFuture<List<TaskActivityHiveModel>> getTaskActivityBySubTaskId(
    String subTaskId,
  ) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async {
        return box.values
            .where((taskActivity) => taskActivity.subTaskId == subTaskId)
            .toList();
      },
      boxName: _boxName,
    );
  }
}
