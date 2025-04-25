import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/schedule_definition_data_source.dart';

/// A data source implementation for managing scheduleDefinition scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleDefinition-related queries.
class ScheduleDefinitionHiveDataSourceImpl extends HiveDataSource<ScheduleDefinitionHiveModel>
    implements ScheduleDefinitionDataSource<ScheduleDefinitionHiveModel> {
  /// Constructor for [ScheduleDefinitionHiveDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveServices] is used.
  ScheduleDefinitionHiveDataSourceImpl({
    HiveServices<ScheduleDefinitionHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<ScheduleDefinitionHiveModel>>(),
        _boxName = HiveBoxConstants.scheduleDefinitionsBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduleDefinitionsBox);
  final String _boxName;
  final HiveServices<ScheduleDefinitionHiveModel> _hiveBox;

  /// Retrieves tasks based on main scheduleDefinition IDs and a date range.
  ///
  /// [taskIds] - List of main scheduleDefinition IDs to filter the tasks.
  /// [startAt] - Start date for the date range filter.
  /// [dueDate] - End date for the date range filter.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
  }) async =>
      _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
        job: (box) async => box.values.where((scheduleDefinition) {
          final isWithinDateRange =
              (startAt == null || scheduleDefinition.scheduledDateRange.isAfter(startAt)) &&
                  (dueDate == null || scheduleDefinition.dueDate!.isBefore(dueDate));
          if (!isWithinDateRange) return false;
          return taskIds.contains(scheduleDefinition.taskId);
        }).toList(),
        boxName: _boxName,
      );

  /// Retrieves tasks scheduled before a specific end time.
  ///
  /// [dueDate] - The end time to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByDueDate(
    DateTime dueDate,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async => box.values
          .where((scheduleDefinition) => scheduleDefinition.dueDate!.isBefore(dueDate))
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a specific main scheduleDefinition ID.
  ///
  /// [taskId] - The main scheduleDefinition ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTaskId(
    String taskId,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async =>
          box.values.where((scheduleDefinition) => scheduleDefinition.taskId == taskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a repetition type.
  ///
  /// [repetitionType] - The repetition type to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByRepetitionType(
    RepetitionType repetitionType,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async => box.values
          .where(
            (scheduleDefinition) =>
                scheduleDefinition.repetitionType.compareTo(repetitionType.name) == 0,
          )
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on specific times.
  ///
  /// [specificTimes] - List of specific times to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchBySpecificTimes(
    List<int> specificTimes,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async => box.values
          .where(
            (scheduleDefinition) =>
                specificTimes.any((sTime) => scheduleDefinition.specificTimes!.contains(sTime)),
          )
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks scheduled after a specific start time.
  ///
  /// [startAt] - The start time to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByStartTime(
    DateTime startAt,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async => box.values
          .where((scheduleDefinition) => scheduleDefinition.scheduledDateRange.isAfter(startAt))
          .toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves tasks based on a time unit.
  ///
  /// [timeUnit] - The time unit to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTimeUnit(
    IntervalUnit timeUnit,
  ) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async => box.values
          .where(
            (scheduleDefinition) => scheduleDefinition.intervalUnit.compareTo(timeUnit.name) == 0,
          )
          .toList(),
      boxName: _boxName,
    );
  }

  @override
  EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchBySpecificDate(DateTime date) async {
    return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
      job: (box) async =>
          box.values.where((scheduleDefinition) => scheduleDefinition.dueDate == date).toList(),
      boxName: _boxName,
    );
  }
}
