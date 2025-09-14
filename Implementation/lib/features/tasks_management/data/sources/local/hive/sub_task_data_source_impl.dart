import 'package:zamaan/core/di/init_dependencies.imports.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/sub_task_data_source.dart';

class SubTaskHiveDataSourceImpl extends HiveDataSource<SubTaskHiveModel>
    implements SubTaskLocalDataSource<SubTaskHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<SubTaskHiveModel>] like this
  SubTaskHiveDataSourceImpl({HiveBoxRunner<SubTaskHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveBoxRunner<SubTaskHiveModel>>(),
        super(hiveServices: hiveBox);
  final HiveBoxRunner<SubTaskHiveModel> _hiveBox;

  @override
  EResultFuture<List<SubTaskHiveModel>> getByPriority(
    Priority priority,
  ) async =>
      _hiveBox.runBoxOperation<List<SubTaskHiveModel>>(
        job: (box) async => box.values.where((item) => item.priority == priority).toList(),
      );

  @override
  EResultFuture<List<SubTaskHiveModel>> getByStatus(
    TaskStatus status,
  ) async =>
      _hiveBox.runBoxOperation<List<SubTaskHiveModel>>(
        job: (box) async => box.values.where((item) => item.status == status).toList(),
      );

  @override
  EResultFuture<List<SubTaskHiveModel>> getByTaskIds(List<String> taskIds) async =>
      _hiveBox.runBoxOperation<List<SubTaskHiveModel>>(
        job: (box) async => box.values.where((item) => taskIds.contains(item.taskId)).toList(),
      );

  @override
  EResultFutureVoid deleteByTaskId(String taskId) async {
    return _hiveBox.runBoxOperation<void>(
      job: (box) async {
        final keysToDelete = box.keys.where((key) => box.get(key)?.taskId == taskId).toList();
        await box.deleteAll(keysToDelete);
      },
    );
  }
}
