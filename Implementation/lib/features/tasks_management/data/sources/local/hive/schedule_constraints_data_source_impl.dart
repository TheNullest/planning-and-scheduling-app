import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';

/// A data source implementation for managing scheduleConstraints scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleConstraints-related queries.
class ScheduleDefinitionHiveDataSourceImpl extends HiveDataSource<ScheduleConstraintHiveModel>
    implements ScheduleConstraintsLocalDataSource<ScheduleConstraintHiveModel> {
  /// Constructor for [ScheduleDefinitionHiveDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveServices] is used.
  ScheduleDefinitionHiveDataSourceImpl({
    HiveServices<ScheduleConstraintHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<ScheduleConstraintHiveModel>>(),
        _boxName = HiveBoxConstants.scheduleConstraintssBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduleConstraintssBox);
  final String _boxName;
  final HiveServices<ScheduleConstraintHiveModel> _hiveBox;

  @override
  EResultFuture<List<ScheduleConstraintHiveModel>> getBatchSchedulesByDay(DateTime date) async {
    return _hiveBox.operator<List<ScheduleConstraintHiveModel>>(
      job: (box) async => box.values.where((scheduleConstraints) {
        final bool inDateRange;
        if (scheduleConstraints.startAt != null) {
          inDateRange = scheduleConstraints.startAt!.isBefore(date) &&
              scheduleConstraints.startAt!.isAfter(date);
        } else {
          inDateRange = true;
        }
        final inWeekDay = scheduleConstraints.exceptionWeekDays
            .any((weekDay) => weekDay.dateTimeWeekDayIndex == date.weekday);
        final inMonthDay =
            scheduleConstraints.exceptionMonthDays.any((monthDay) => monthDay == date.day);

        // // In Scheduled Intervals
        // final inInterval = scheduleConstraints.scheduledIntervals.any((interval) {
        //   switch (interval.intervalUnit) {
        //     case IntervalUnit.hour:
        //       final date = scheduleConstraints.scheduledDateRange!.start +
        //           (interval.intervalValue * interval.repeatCount);
        //   }
        // });

        return inDateRange && (inWeekDay || inMonthDay);
      }).toList(),
      boxName: _boxName,
    );
  }

  // /// Retrieves tasks based on main scheduleConstraints IDs and a date range.
  // ///
  // /// [taskIds] - List of main scheduleConstraints IDs to filter the tasks.
  // /// [startAt] - Start date for the date range filter.
  // /// [dueDate] - End date for the date range filter.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startAt,
  //   required DateTime? dueDate,
  // }) async =>
  //     _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //       job: (box) async => box.values.where((scheduleConstraints) {
  //         final isWithinDateRange =
  //             (startAt == null || scheduleConstraints.scheduledDateRange.isAfter(startAt)) &&
  //                 (dueDate == null || scheduleConstraints.dueDate!.isBefore(dueDate));
  //         if (!isWithinDateRange) return false;
  //         return taskIds.contains(scheduleConstraints.taskId);
  //       }).toList(),
  //       boxName: _boxName,
  //     );

  // /// Retrieves tasks scheduled before a specific end time.
  // ///
  // /// [dueDate] - The end time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByDueDate(
  //   DateTime dueDate,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where((scheduleConstraints) => scheduleConstraints.dueDate!.isBefore(dueDate))
  //         .toList(),
  //     boxName: _boxName,
  //   );
  // }

  // /// Retrieves tasks based on a specific main scheduleConstraints ID.
  // ///
  // /// [taskId] - The main scheduleConstraints ID to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTaskId(
  //   String taskId,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async =>
  //         box.values.where((scheduleConstraints) => scheduleConstraints.taskId == taskId).toList(),
  //     boxName: _boxName,
  //   );
  // }

  // /// Retrieves tasks based on a repetition type.
  // ///
  // /// [repetitionType] - The repetition type to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByRepetitionType(
  //   RepetitionType repetitionType,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where(
  //           (scheduleConstraints) =>
  //               scheduleConstraints.repetitionType.compareTo(repetitionType.name) == 0,
  //         )
  //         .toList(),
  //     boxName: _boxName,
  //   );
  // }

  // /// Retrieves tasks based on specific times.
  // ///
  // /// [specificTimes] - List of specific times to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchBySpecificTimes(
  //   List<int> specificTimes,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where(
  //           (scheduleConstraints) =>
  //               specificTimes.any((sTime) => scheduleConstraints.specificTimes!.contains(sTime)),
  //         )
  //         .toList(),
  //     boxName: _boxName,
  //   );
  // }

  // /// Retrieves tasks scheduled after a specific start time.
  // ///
  // /// [startAt] - The start time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByStartTime(
  //   DateTime startAt,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where((scheduleConstraints) => scheduleConstraints.scheduledDateRange.isAfter(startAt))
  //         .toList(),
  //     boxName: _boxName,
  //   );
  // }

  // /// Retrieves tasks based on a time unit.
  // ///
  // /// [timeUnit] - The time unit to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBatchByTimeUnit(
  //   IntervalUnit timeUnit,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where(
  //           (scheduleConstraints) => scheduleConstraints.intervalUnit.compareTo(timeUnit.name) == 0,
  //         )
  //         .toList(),
  //     boxName: _boxName,
  //   );
  // }
}
