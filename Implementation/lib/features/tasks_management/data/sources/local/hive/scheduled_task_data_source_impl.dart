import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduled_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/scheduled_task_data_source.dart';

/// A data source implementation for managing task scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific task-related queries.
class ScheduledTaskHiveDataSourceImpl extends HiveDataSource<ScheduledTaskHiveModel>
    implements ScheduledTaskDataSource<ScheduledTaskHiveModel> {
  /// Constructor for [ScheduledTaskHiveDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveServices] is used.
  ScheduledTaskHiveDataSourceImpl({
    HiveServices<ScheduledTaskHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<ScheduledTaskHiveModel>>(),
        _boxName = HiveBoxConstants.scheduledTasksBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduledTasksBox);
  final String _boxName;
  final HiveServices<ScheduledTaskHiveModel> _hiveBox;

  /// Retrieves tasks based on main task IDs and a date range.
  ///
  /// [taskIds] - List of main task IDs to filter the tasks.
  /// [startAt] - Start date for the date range filter.
  /// [dueDate] - End date for the date range filter.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      _hiveBox.operator<List<ScheduledTaskHiveModel>>(
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
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByDueDate(
    DateTime dueDate,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
      job: (box) async => box.values.where((task) => task.dueDate!.isBefore(dueDate)).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [taskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
      job: (box) async => box.values.where((task) => task.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a repetition type.
  ///
  /// [repetitionType] - The repetition type to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByRepetitionType(
    RepetitionType repetitionType,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
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
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchBySpecificTimes(
    List<int> specificTimes,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
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
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByStartTime(
    DateTime startAt,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
      job: (box) async => box.values.where((task) => task.willStartAt!.isAfter(startAt)).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a time unit.
  ///
  /// [timeUnit] - The time unit to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduledTaskHiveModel] objects.
  @override
  EResultFuture<List<ScheduledTaskHiveModel>> getBatchByTimeUnit(
    TimeUnit timeUnit,
  ) async {
    return _hiveBox.operator<List<ScheduledTaskHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.timeUnit.compareTo(timeUnit.name) == 0).toList(),
      boxName: _boxName,
    );
  }
}
