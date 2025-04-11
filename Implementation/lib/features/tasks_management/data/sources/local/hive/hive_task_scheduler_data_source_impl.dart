import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_scheduler_data_source.dart';

/// A data source implementation for managing task scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific task-related queries.
class HiveTaskSchedulerDataSourceImpl extends HiveDataSource<TaskSchedulerHiveModel>
    implements TaskSchedulerDataSource<TaskSchedulerHiveModel> {
  /// Constructor for [HiveTaskSchedulerDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveServices] is used.
  HiveTaskSchedulerDataSourceImpl({
    HiveServices<TaskSchedulerHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<TaskSchedulerHiveModel>>(),
        _boxName = HiveBoxConstants.taskSchedulersBox,
        super(hiveServices: hiveBox, HiveBoxConstants.taskSchedulersBox);
  final String _boxName;
  final HiveServices<TaskSchedulerHiveModel> _hiveBox;

  /// Retrieves tasks based on main task IDs and a date range.
  ///
  /// [taskIds] - List of main task IDs to filter the tasks.
  /// [startAt] - Start date for the date range filter.
  /// [dueDate] - End date for the date range filter.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      _hiveBox.operator<List<TaskSchedulerHiveModel>>(
        job: (box) async => box.values.where((task) {
          final isWithinDateRange = (startAt == null || task.willStartAt!.isAfter(startAt)) &&
              (dueDate == null || task.dueDate!.isBefore(dueDate));
          if (!isWithinDateRange) return false;
          return taskIds.contains(task.taskId);
        }).toList(),
        boxName: _boxName,
      );

  /// Retrieves tasks scheduled before a specific end time.
  ///
  /// [dueDate] - The end time to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByDueDate(
    DateTime dueDate,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values.where((task) => task.dueDate!.isBefore(dueDate)).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [taskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values.where((task) => task.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a repetition type.
  ///
  /// [repetitionType] - The repetition type to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByRepetitionType(
    RepetitionType repetitionType,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values
          .where((task) => task.repetitionType.compareTo(repetitionType.name) == 0)
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on specific times.
  ///
  /// [specificTimes] - List of specific times to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchBySpecificTimes(
    List<int> specificTimes,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values
          .where(
            (task) => specificTimes.any((sTime) => task.specificTimes!.contains(sTime)),
          )
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks scheduled after a specific start time.
  ///
  /// [startAt] - The start time to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByStartTime(
    DateTime startAt,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values.where((task) => task.willStartAt!.isAfter(startAt)).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a time unit.
  ///
  /// [timeUnit] - The time unit to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getBatchByTimeUnit(
    TimeUnit timeUnit,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.timeUnit.compareTo(timeUnit.name) == 0).toList(),
      boxName: _boxName,
    );
  }
}
