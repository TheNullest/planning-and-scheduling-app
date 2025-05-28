import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_instance_data_source.dart';

class ScheduledInstanceHiveDataSourceImpl extends HiveDataSource<ScheduledInstanceHiveModel>
    implements ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> {
  ScheduledInstanceHiveDataSourceImpl({
    HiveBoxRunner<ScheduledInstanceHiveModel>? hiveBox,
  })  : _hiveService = hiveBox ?? serviceLocator<HiveBoxRunner<ScheduledInstanceHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<ScheduledInstanceHiveModel> _hiveService;

  @override
  EResultFuture<List<ScheduledInstanceHiveModel>> getBatchByDay(
    DateTime date,
  ) async =>
      _hiveService.runBoxOperation<List<ScheduledInstanceHiveModel>>(
        job: (box) async => box.values.where((item) => item.startDateTime.day == date.day).toList(),
      );

  @override
  EResultFuture<List<ScheduledInstanceHiveModel>> getBatchBySchedulers(
    List<String> schedulerIds,
  ) async =>
      _hiveService.runBoxOperation<List<ScheduledInstanceHiveModel>>(
        job: (box) async =>
            box.values.where((item) => schedulerIds.any((id) => item.schedulerId == id)).toList(),
      );

  @override
  EResultFutureVoid deleteBySchedulerIds(List<String> schedulerIds) async =>
      _hiveService.runBoxOperation(
        job: (box) async {
          final instances = box.values
              .where((item) => schedulerIds.contains(item.schedulerId))
              .map((item) => item.id)
              .toList();

          return box.deleteAll(instances);
        },
      );
}
