import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/time_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/time_interval_data_source.dart';

class HiveTimeIntervalDataSourceImpl
    extends BaseLocalDataSourceAbstraction<TimeIntervalHiveModel>
    implements TimeIntervalDataSource<TimeIntervalHiveModel> {
  // Just to add the testability feature to the class,
  // we need to inject the [HiveInitializer<TimeIntervalHiveModel>] like this
  HiveTimeIntervalDataSourceImpl({
    HiveServices<TimeIntervalHiveModel>? hiveBox,
  })  : _hiveBox =
            hiveBox ?? serviceLocator<HiveServices<TimeIntervalHiveModel>>(),
        _boxName = HiveBoxConstants.timeIntervalsBox,
        super(
          HiveBoxConstants.timeIntervalsBox,
          hiveServices: hiveBox,
        );
  final String _boxName;
  final HiveServices<TimeIntervalHiveModel> _hiveBox;

  /// Retrieves tasks based on a specific main task ID.
  ///
  /// [mainTaskId] - The main task ID to filter the tasks.
  ///
  /// Returns a [EResultFuture] containing a list of [TimeIntervalHiveModel] objects.
  @override
  EResultFuture<List<TimeIntervalHiveModel>> getScheduledTimesByMainTaskId(
    String mainTaskId,
  ) async {
    return _hiveBox.operator<List<TimeIntervalHiveModel>>(
      job: (box) async =>
          box.values.where((task) => task.mainTaskId == mainTaskId).toList(),
      boxName: _boxName,
    );
  }

  /// Retrieves a list of [TimeIntervalHiveModel] by main task IDs and date range.
  ///
  /// [mainTaskIds] - List of main task IDs to filter the time intervals.
  /// [startAt] - Start date of the date range.
  /// [endAt] - End date of the date range.
  /// Returns a [EResultFuture] containing a list of [TimeIntervalHiveModel].
  @override
  EResultFuture<List<TimeIntervalHiveModel>>
      getTimeIntervalByMainTaskIdAndDateRange({
    required List<String> mainTaskIds,
    required DateTime? startAt,
    required DateTime? endAt,
  }) async {
    return _hiveBox.operator<List<TimeIntervalHiveModel>>(
      job: (box) async {
        return box.values.where((timeInterval) {
          final isInDateRange =
              (startAt == null || timeInterval.startAt.isAfter(startAt)) &&
                  (endAt == null || timeInterval.endAt!.isBefore(endAt));
          final isInMainTaskIds = mainTaskIds.contains(timeInterval.mainTaskId);
          return isInDateRange && isInMainTaskIds;
        }).toList();
      },
      boxName: _boxName,
    );
  }

  /// Retrieves a list of [TimeIntervalHiveModel] by sub task ID.
  ///
  /// [subTaskId] - Sub task ID to filter the time intervals.
  /// Returns a [EResultFuture] containing a list of [TimeIntervalHiveModel].
  @override
  EResultFuture<List<TimeIntervalHiveModel>> getTimeIntervalBySubTaskId(
    String subTaskId,
  ) async {
    return _hiveBox.operator<List<TimeIntervalHiveModel>>(
      job: (box) async {
        return box.values
            .where((timeInterval) => timeInterval.subTaskId == subTaskId)
            .toList();
      },
      boxName: _boxName,
    );
  }
}
