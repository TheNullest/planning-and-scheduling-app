import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_activity_data_source.dart';

class HiveTaskActivityDataSourceImpl extends HiveDataSource<TaskActivityHiveModel>
    implements TaskActivityDataSource<TaskActivityHiveModel> {
  // Just to add the testability feature to the class,
  // we need to inject the [HiveInitializer<TaskActivityHiveModel>] like this
  HiveTaskActivityDataSourceImpl({
    HiveServices<TaskActivityHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<TaskActivityHiveModel>>(),
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
  EResultFuture<List<TaskActivityHiveModel>> getBatchByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async => box.values.where((task) => task.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves a list of [TaskActivityHiveModel] by main task IDs and date range.
  ///
  /// [taskId] - List of main task IDs to filter the time intervals.
  /// [startAt] - Start date of the date range.
  /// [dueDate] - End date of the date range.
  /// Returns a [EResultFuture] containing a list of [TaskActivityHiveModel].
  @override
  EResultFuture<List<TaskActivityHiveModel>> getBatchByTaskIdAndDateRange({
    required String taskId,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async {
        return box.values.where((taskActivity) {
          if (taskId.compareTo(taskActivity.taskId) != 0) return false;

          final isInDateRange = (startAt == null || taskActivity.startAt.isAfter(startAt)) &&
              (dueDate == null || taskActivity.dueDate!.isBefore(dueDate));
          return isInDateRange;
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
  EResultFuture<List<TaskActivityHiveModel>> getBatchBySubTaskId(
    String subTaskId,
  ) async {
    return _hiveBox.operator<List<TaskActivityHiveModel>>(
      job: (box) async {
        return box.values.where((taskActivity) => taskActivity.subTaskId == subTaskId).toList();
      },
      boxName: _boxName,
    );
  }
}
