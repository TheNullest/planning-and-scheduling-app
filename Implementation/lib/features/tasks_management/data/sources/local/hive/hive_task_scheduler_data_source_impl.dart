import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/task_scheduler_data_source.dart';

/// A data source implementation for managing task scheduling data using Hive.
///
/// This class extends [BaseLocalDataSourceAbstraction] to leverage common data operations
/// and provides additional methods for specific task-related queries.
class HiveTaskSchedulerDataSourceImpl
    extends BaseLocalDataSourceAbstraction<TaskSchedulerHiveModel>
    implements TaskSchedulerDataSource<TaskSchedulerHiveModel> {
  /// Constructor for [HiveTaskSchedulerDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveServices] is used.
  HiveTaskSchedulerDataSourceImpl({
    HiveServices<TaskSchedulerHiveModel>? hiveBox,
  })  : _hiveBox =
            hiveBox ?? serviceLocator<HiveServices<TaskSchedulerHiveModel>>(),
        _boxName = HiveBoxConstants.taskSchedulersBox,
        super(hiveServices: hiveBox, HiveBoxConstants.taskSchedulersBox);
  final String _boxName;
  final HiveServices<TaskSchedulerHiveModel> _hiveBox;

  /// Retrieves tasks based on main task IDs and a date range.
  ///
  /// [mainTaskIds] - List of main task IDs to filter the tasks.
  /// [startAt] - Start date for the date range filter.
  /// [endAt] - End date for the date range filter.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>>
      getTaskSchedulersByTaskIdsAndDateRange({
    required List<String> mainTaskIds,
    required DateTime? startAt,
    required DateTime? endAt,
  }) async =>
          _hiveBox.operator<List<TaskSchedulerHiveModel>>(
            job: (box) async => box.values.where((task) {
              final isWithinDateRange =
                  (startAt == null || task.willStartAt!.isAfter(startAt)) &&
                      (endAt == null || task.endAt!.isBefore(endAt));
              if (!isWithinDateRange) return false;
              return mainTaskIds.contains(task.taskId);
            }).toList(),
            boxName: _boxName,
          );

  /// Retrieves tasks scheduled before a specific end time.
  ///
  /// [endAt] - The end time to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersByEndTime(
    DateTime endAt,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.endAt!.isBefore(endAt)).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [taskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a repetition type.
  ///
  /// [repetitionType] - The repetition type to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersByRepetitionType(
    RepetitionType repetitionType,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values
          .where((task) => task.repetitionType == repetitionType.index)
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
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersBySpecificTimes(
    List<int> specificTimes,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values
          .where(
            (task) => specificTimes
                .any((sTime) => task.specificTimes!.contains(sTime)),
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
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersByStartTime(
    DateTime startAt,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async => box.values
          .where((task) => task.willStartAt!.isAfter(startAt))
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a time unit.
  ///
  /// [timeUnit] - The time unit to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersByTimeUnit(
    TimeUnit timeUnit,
  ) async {
    return _hiveBox.operator<List<TaskSchedulerHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.timeUnit == timeUnit.index).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks within a specific date range.
  ///
  /// [startDate] - The start date for the date range filter.
  /// [endDate] - The end date for the date range filter.
  ///
  /// Returns a [EResultFuture] containing a list of [TaskSchedulerHiveModel] objects.
  @override
  EResultFuture<List<TaskSchedulerHiveModel>> getTaskSchedulersWithinDateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) async =>
      _hiveBox.operator<List<TaskSchedulerHiveModel>>(
        job: (box) async => box.values
            .where(
              (task) =>
                  task.willStartAt!.isAfter(startDate) &&
                  task.endAt!.isBefore(endDate),
            )
            .toList(),
        boxName: _boxName,
      );
}
