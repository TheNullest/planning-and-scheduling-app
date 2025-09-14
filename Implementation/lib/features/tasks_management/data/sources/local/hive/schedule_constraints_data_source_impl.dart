import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';

/// A data source implementation for managing scheduleConstraints scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleConstraints-related queries.
class ScheduleConstraintsHiveDataSourceImpl extends HiveDataSource<ScheduleConstraintsHiveModel>
    implements ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel> {
  /// Constructor for [ScheduleConstraintsHiveDataSourceImpl].
  ///
  /// The [hiveBox] parameter is optional and allows for dependency injection
  /// to facilitate testing. If not provided, a default [HiveBoxRunner] is used.
  ScheduleConstraintsHiveDataSourceImpl({
    HiveBoxRunner<ScheduleConstraintsHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<ScheduleConstraintsHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<ScheduleConstraintsHiveModel> _hiveBox;

  @override
  EResultFuture<List<ScheduleConstraintsHiveModel>> getScheduleByDay(DateTime date) async =>
      _hiveBox.runBoxOperation<List<ScheduleConstraintsHiveModel>>(
        job: (box) async => box.values.where((scheduleConstraints) {
          final bool inDateRange;
          if (scheduleConstraints.startDate != null) {
            inDateRange = scheduleConstraints.startDate!.isBefore(date) &&
                scheduleConstraints.startDate!.isAfter(date);
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
      );

  @override
  EResultFuture<ScheduleConstraintsHiveModel?> getByTaskId(String taskId) async =>
      _hiveBox.runBoxOperation<ScheduleConstraintsHiveModel?>(
          job: (box) async => box.values.cast<ScheduleConstraintsHiveModel?>().singleWhere(
                (item) => item?.taskId == taskId,
                orElse: () => null,
              ));

  // /// Retrieves tasks based on main scheduleConstraints IDs and a date range.
  // ///
  // /// [taskIds] - List of main scheduleConstraints IDs to filter the tasks.
  // /// [startTime] - Start date for the date range filter.
  // /// [dueDate] - End date for the date range filter.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startTime,
  //   required DateTime? dueDate,
  // }) async =>
  //     _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //       job: (box) async => box.values.where((scheduleConstraints) {
  //         final isWithinDateRange =
  //             (startTime == null || scheduleConstraints.scheduledDateRange.isAfter(startTime)) &&
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
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByDueDate(
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
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByTaskId(
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
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByRepetitionType(
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
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getBySpecificTimes(
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
  // /// [startTime] - The start time to filter the tasks.
  // ///
  // /// Returns a [EResultFuture] containing a list of [ScheduleDefinitionHiveModel] objects.
  // @override
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByStartTime(
  //   DateTime startTime,
  // ) async {
  //   return _hiveBox.operator<List<ScheduleDefinitionHiveModel>>(
  //     job: (box) async => box.values
  //         .where((scheduleConstraints) => scheduleConstraints.scheduledDateRange.isAfter(startTime))
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
  // EResultFuture<List<ScheduleDefinitionHiveModel>> getByTimeUnit(
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
