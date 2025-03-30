import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/main_task_data_source.dart';

class HiveMainTaskDataSourceImpl
    extends BaseLocalDataSourceAbstraction<MainTaskHiveModel>
    implements MainTaskDataSource<MainTaskHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MainTaskHiveModel>] like this
  HiveMainTaskDataSourceImpl({HiveServices<MainTaskHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<MainTaskHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.mainTasksBox);
  final String _boxName = HiveBoxConstants.mainTasksBox;
  final HiveServices<MainTaskHiveModel> _hiveBox;

  @override
  EResultFuture<List<MainTaskHiveModel>> getMainTasksByCategories(
    List<String> categoryIds,
  ) async =>
      _hiveBox.operator<List<MainTaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (item) => item.categoryIds
                  .any((categoryId) => categoryIds.contains(categoryId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<MainTaskHiveModel>> getMainTasksByDueDate(
    DateTime dueDate,
  ) async =>
      _hiveBox.operator<List<MainTaskHiveModel>>(
        job: (box) async => box.values
            .where((item) => item.dueDate!.compareTo(dueDate) <= 0)
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<MainTaskHiveModel>> getMainTasksByPriority(
    Priority priority,
  ) async =>
      _hiveBox.operator<List<MainTaskHiveModel>>(
        job: (box) async => box.values
            .where((item) => item.priority == (priority.index))
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<MainTaskHiveModel>> getMainTasksByStatus(
    Status status,
  ) async =>
      _hiveBox.operator<List<MainTaskHiveModel>>(
        job: (box) async =>
            box.values.where((item) => item.status == (status.index)).toList(),
        boxName: _boxName,
      );
  @override
  EResultFuture<List<MainTaskHiveModel>> getMainTasksByTags(
    List<String> tagIds,
  ) async =>
      _hiveBox.operator<List<MainTaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (task) => task.tagIds!.any((tagId) => tagIds.contains(tagId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<MainTaskHiveModel> getMainTaskByTaskSchedulerId(
    String schedulerId,
  ) async =>
      _hiveBox.operator<MainTaskHiveModel>(
        job: (box) async => box.values
            .firstWhere((item) => item.taskSchedulerId == schedulerId),
        boxName: _boxName,
      );
}
