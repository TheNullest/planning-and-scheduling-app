import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_occurrence_data_source.dart';

class ScheduledOccurrenceHiveDataSourceImpl extends HiveDataSource<ScheduledOccurrenceHiveModel>
    implements ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel> {
  ScheduledOccurrenceHiveDataSourceImpl({
    HiveBoxRunner<ScheduledOccurrenceHiveModel>? hiveBox,
  })  : _hiveService = hiveBox ?? serviceLocator<HiveBoxRunner<ScheduledOccurrenceHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<ScheduledOccurrenceHiveModel> _hiveService;

  @override
  EResultFuture<List<ScheduledOccurrenceHiveModel>> getByDate(
    DateTime date,
  ) async =>
      _hiveService.runBoxOperation<List<ScheduledOccurrenceHiveModel>>(
        job: (box) async => box.values.where((item) => item.startDateTime.day == date.day).toList(),
      );

  @override
  EResultFuture<List<ScheduledOccurrenceHiveModel>> getByTaskId(String taskId) async =>
      _hiveService.runBoxOperation<List<ScheduledOccurrenceHiveModel>>(
        job: (box) async => box.values.where((item) => item.taskId == taskId).toList(),
      );

  @override
  EResultFuture<List<ScheduledOccurrenceHiveModel>> getUpcomingByTaskId(String taskId) async {
    final now = DateTime.now();
    return _hiveService.runBoxOperation<List<ScheduledOccurrenceHiveModel>>(
      job: (box) async => box.values.where((item) => item.startDateTime.isAfter(now)).toList(),
    );
  }

  @override
  EResultFuture<List<ScheduledOccurrenceHiveModel>> getBySchedulerIds(
    List<String> schedulerIds,
  ) async =>
      _hiveService.runBoxOperation<List<ScheduledOccurrenceHiveModel>>(
        job: (box) async =>
            box.values.where((item) => schedulerIds.any((id) => item.schedulerId == id)).toList(),
      );

  @override
  EResultFutureVoid deleteBySchedulerIds(List<String> schedulerIds) async =>
      _hiveService.runBoxOperation(
        job: (box) async {
          final ids = box.values
              .where((item) => schedulerIds.contains(item.schedulerId))
              .map((item) => item.id)
              .toList();

          return box.deleteAll(ids);
        },
      );

  @override
  EResultFutureVoid deleteByTaskId(String taskId) async => _hiveService.runBoxOperation(
        job: (box) async {
          final ids =
              box.values.where((item) => item.taskId == taskId).map((item) => item.id).toList();

          return box.deleteAll(ids);
        },
      );
}
