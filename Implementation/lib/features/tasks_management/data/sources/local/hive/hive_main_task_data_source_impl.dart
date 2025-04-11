import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/main_task_data_source.dart';

class HiveTaskDataSourceImpl
    extends BaseLocalDataSourceAbstraction<TaskHiveModel>
    implements TaskDataSource<TaskHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TaskHiveModel>] like this
  HiveTaskDataSourceImpl({HiveServices<TaskHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<TaskHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.mainTasksBox);
  String get _boxName => HiveBoxConstants.mainTasksBox;
  final HiveServices<TaskHiveModel> _hiveBox;

  @override
  EResultFuture<List<TaskHiveModel>> getTasksByCategories(
    List<String> categoryIds,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (item) => item.categoryIds
                  .any((categoryId) => categoryIds.contains(categoryId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getTasksByDueDate(
    DateTime dueDate,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where((item) => item.dueDate!.compareTo(dueDate) <= 0)
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getTasksByPriority(
    Priority priority,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where((item) => item.priority == (priority.index))
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getTasksByStatus(
    Status status,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async =>
            box.values.where((item) => item.status == (status.index)).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getTasksByFixedTags(
    List<String> tagIds,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (task) =>
                  task.fixedTagIds!.any((tagId) => tagIds.contains(tagId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<TaskHiveModel> getTaskByTaskSchedulerId(
    String schedulerId,
  ) async =>
      _hiveBox.operator<TaskHiveModel>(
        job: (box) async => box.values
            .firstWhere((item) => item.taskSchedulerId == schedulerId),
        boxName: _boxName,
      );
}
