import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/priority_enum.dart';
import 'package:zamaan/core/enums/status_enum.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/sub_task_data_source.dart';

class HiveSubTaskDataSourceImpl
    extends BaseLocalDataSourceAbstraction<SubTaskHiveModel>
    implements SubTaskDataSource<SubTaskHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<SubTaskHiveModel>] like this
  HiveSubTaskDataSourceImpl({HiveServices<SubTaskHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<SubTaskHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.subTasksBox);
  String get _boxName => HiveBoxConstants.subTasksBox;
  final HiveServices<SubTaskHiveModel> _hiveBox;

  @override
  EResultFuture<List<SubTaskHiveModel>> getSubTasksByPriority(
    Priority priority,
  ) async =>
      _hiveBox.operator<List<SubTaskHiveModel>>(
        job: (box) async => box.values
            .where((item) => item.priority == (priority.index))
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<SubTaskHiveModel>> getSubTasksByStatus(
    Status status,
  ) async =>
      _hiveBox.operator<List<SubTaskHiveModel>>(
        job: (box) async =>
            box.values.where((item) => item.status == (status.index)).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<SubTaskHiveModel>> getSubTasksByTaskId(
    String taskId,
  ) async =>
      _hiveBox.operator<List<SubTaskHiveModel>>(
        job: (box) async =>
            box.values.where((item) => item.taskId == taskId).toList(),
        boxName: _boxName,
      );
}
