import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_data_source.dart';

class HiveTaskDataSourceImpl extends HiveDataSource<TaskHiveModel>
    implements TaskDataSource<TaskHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TaskHiveModel>] like this
  HiveTaskDataSourceImpl({HiveServices<TaskHiveModel>? hiveBox})
      : _hiveBox = hiveBox ?? serviceLocator<HiveServices<TaskHiveModel>>(),
        super(hiveServices: hiveBox, HiveBoxConstants.mainTasksBox);
  String get _boxName => HiveBoxConstants.mainTasksBox;
  final HiveServices<TaskHiveModel> _hiveBox;

  @override
  EResultFuture<List<TaskHiveModel>> getBatchByCategories(
    List<String> categoryIds,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (item) => item.categoryIds.any((categoryId) => categoryIds.contains(categoryId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getBatchByPriority(
    Priority priority,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values.where((item) => item.priority == (priority.index)).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getBatchByStatus(
    Status status,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values.where((item) => item.status == (status.index)).toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getBatchByFixedTags(
    List<String> tagIds,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (task) => task.fixedTagIds!.any((tagId) => tagIds.contains(tagId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<List<TaskHiveModel>> getBatchByDueDateRange(
    DateTime fromDate,
    DateTime toDate,
  ) async =>
      _hiveBox.operator<List<TaskHiveModel>>(
        job: (box) async => box.values
            .where(
              (item) =>
                  item.dueDate!.compareTo(fromDate) >= 0 && item.dueDate!.compareTo(toDate) <= 0,
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  EResultFuture<TaskHiveModel> getByTaskSchedulerId(
    String schedulerId,
  ) async =>
      _hiveBox.operator<TaskHiveModel>(
        job: (box) async => box.values.firstWhere((item) => item.taskSchedulerId == schedulerId),
        boxName: _boxName,
      );
}
