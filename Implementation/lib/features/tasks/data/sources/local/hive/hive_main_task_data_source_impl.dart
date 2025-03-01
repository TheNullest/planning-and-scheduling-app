import 'package:zamaan/features/auth/presentation/constants/hive_box_constants.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';
import 'package:zamaan/data/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/main_task_local_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/main_task_data_source.dart';

class HiveMainTaskDataSourceImpl
    extends BaseLocalDataSourceAbstraction<MainTaskLocalModel>
    implements MainTaskDataSource<MainTaskLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MainTaskLocalModel>] like this
  HiveMainTaskDataSourceImpl({HiveServices<MainTaskLocalModel>? hiveBox})
      : _hiveBox = hiveBox ?? HiveServices<MainTaskLocalModel>(),
        super(hiveBox: hiveBox, HiveBoxConstants.MAINTASKS_BOX);
  final String _boxName = HiveBoxConstants.MAINTASKS_BOX;
  final HiveServices<MainTaskLocalModel> _hiveBox;

  @override
  ResultFuture<List<MainTaskLocalModel>> getMainTasksByCategories(
    List<String> categoryIds,
  ) async =>
      _hiveBox.operator<List<MainTaskLocalModel>>(
        job: (box) async => box.values
            .where(
              (item) => item.categoryIds!
                  .any((categoryId) => categoryIds.contains(categoryId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<List<MainTaskLocalModel>> getMainTasksByDueDate(
    DateTime dueDate,
  ) async =>
      _hiveBox.operator<List<MainTaskLocalModel>>(
        job: (box) async => box.values
            .where((item) => item.dueDate!.compareTo(dueDate) <= 0)
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<List<MainTaskLocalModel>> getMainTasksByPriority(
    Priority priority,
  ) async =>
      _hiveBox.operator<List<MainTaskLocalModel>>(
        job: (box) async => box.values
            .where((item) => item.priority == (priority.index))
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<List<MainTaskLocalModel>> getMainTasksByStatus(
    Status status,
  ) async =>
      _hiveBox.operator<List<MainTaskLocalModel>>(
        job: (box) async =>
            box.values.where((item) => item.status == (status.index)).toList(),
        boxName: _boxName,
      );
  @override
  ResultFuture<List<MainTaskLocalModel>> getMainTasksByTags(
    List<String> tagIds,
  ) async =>
      _hiveBox.operator<List<MainTaskLocalModel>>(
        job: (box) async => box.values
            .where(
              (task) => task.tagIds!.any((tagId) => tagIds.contains(tagId)),
            )
            .toList(),
        boxName: _boxName,
      );

  @override
  ResultFuture<MainTaskLocalModel> getMainTaskByTaskSchedulerId(
    String schedulerId,
  ) async =>
      _hiveBox.operator<MainTaskLocalModel>(
        job: (box) async => box.values
            .firstWhere((item) => item.taskSchedulerId == schedulerId),
        boxName: _boxName,
      );
}
