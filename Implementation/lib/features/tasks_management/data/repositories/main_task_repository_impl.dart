import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_crud_operations.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/main_task_data_source.dart';

class MainTaskRepositoryImpl extends BaseCRUDOperations<
    MainTaskEntity,
    MainTaskHiveModel,
    MainTaskDataSource<MainTaskHiveModel>> implements MainTaskRepository {
  MainTaskRepositoryImpl(super.localDataSource)
      : _localDataSource = localDataSource;
  final MainTaskDataSource _localDataSource;

  @override
  MainTaskHiveModel fromEntity(MainTaskEntity entity) =>
      MainTaskHiveModel.fromEntity(entity);

  @override
  MainTaskEntity toEntity(MainTaskHiveModel model) => model.toEntity();

  EResult<List<MainTaskEntity>> toEntities(
    Either<Failure, List<MainTaskHiveModel>> models,
  ) =>
      models.map(
        (taskModels) => taskModels
            .map<MainTaskEntity>((taskModel) => taskModel.toEntity())
            .toList(),
      );

  @override
  EResultFuture<List<MainTaskEntity>> getMainTasksByCategories(
    List<String> categoryIds,
  ) async =>
      toEntities(
        await _localDataSource.getMainTasksByCategories(categoryIds)
            as Either<Failure, List<MainTaskHiveModel>>,
      );

  @override
  EResultFuture<List<MainTaskEntity>> getMainTasksByDueDate(
    DateTime dueDate,
  ) async =>
      toEntities(
        await _localDataSource.getMainTasksByDueDate(dueDate)
            as Either<Failure, List<MainTaskHiveModel>>,
      );

  @override
  EResultFuture<List<MainTaskEntity>> getMainTasksByPriority(
    Priority priority,
  ) async =>
      toEntities(
        await _localDataSource.getMainTasksByPriority(priority)
            as Either<Failure, List<MainTaskHiveModel>>,
      );

  @override
  EResultFuture<List<MainTaskEntity>> getMainTasksByStatus(
    Status status,
  ) async =>
      toEntities(
        await _localDataSource.getMainTasksByStatus(status)
            as Either<Failure, List<MainTaskHiveModel>>,
      );

  @override
  EResultFuture<List<MainTaskEntity>> getMainTasksByTags(
    List<String> tagIds,
  ) async =>
      toEntities(
        await _localDataSource.getMainTasksByTags(tagIds)
            as Either<Failure, List<MainTaskHiveModel>>,
      );

  @override
  EResultFuture<MainTaskEntity> getMainTaskByTaskSchedulerId(
    String schedulerId,
  ) async {
    final result =
        await _localDataSource.getMainTaskByTaskSchedulerId(schedulerId);
    return result.map((model) => toEntity(model as MainTaskHiveModel));
  }
}
