import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_instance_data_source.dart';

class ScheduledInstanceHiveDataSourceImpl extends HiveDataSource<ScheduledInstanceHiveModel>
    implements ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> {
  ScheduledInstanceHiveDataSourceImpl({
    HiveServices<ScheduledInstanceHiveModel>? hiveBox,
  })  : _hiveService = hiveBox ?? serviceLocator<HiveServices<ScheduledInstanceHiveModel>>(),
        _boxName = HiveBoxConstants.scheduleConstraintssBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduleConstraintssBox);
  final String _boxName;
  final HiveServices<ScheduledInstanceHiveModel> _hiveService;

  @override
  EResultFuture<List<ScheduledInstanceHiveModel>> getBatchScheduledInstancesByDay(
    DateTime date,
  ) async =>
      _hiveService.operator<List<ScheduledInstanceHiveModel>>(
        job: (box) async => box.values.where((item) => item.startDateTime.day == date.day).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<ScheduledInstanceHiveModel>> getBatchScheduledInstancesBySchedulers(
    List<String> schedulerIds,
  ) async =>
      _hiveService.operator<List<ScheduledInstanceHiveModel>>(
        job: (box) async =>
            box.values.where((item) => schedulerIds.any((id) => item.schedulerId == id)).toList(),
        boxName: _boxName,
      );
}
