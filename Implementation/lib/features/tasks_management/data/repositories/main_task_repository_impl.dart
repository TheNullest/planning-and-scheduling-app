import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_entity.dart';
import 'package:zamaan/domain/repositories/bases/base_crud_operations.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/main_task_data_source.dart';

class TaskRepositoryImpl extends BaseCRUDOperations<TaskEntity, TaskHiveModel,
    TaskDataSource<TaskHiveModel>> implements TaskRepository {
  TaskRepositoryImpl(super.localDataSource)
      : _localDataSource = localDataSource;
  final TaskDataSource _localDataSource;

  @override
  TaskHiveModel fromEntity(TaskEntity entity) =>
      TaskHiveModel.fromEntity(entity);

  @override
  TaskEntity toEntity(TaskHiveModel model) => model.toEntity();

  EResult<List<TaskEntity>> toEntities(
    Either<Failure, List<TaskHiveModel>> models,
  ) =>
      models.map(
        (taskModels) => taskModels
            .map<TaskEntity>((taskModel) => taskModel.toEntity())
            .toList(),
      );

  @override
  EResultFuture<List<TaskEntity>> getTasksByCategories(
    List<String> categoryIds,
  ) async =>
      toEntities(
        await _localDataSource.getTasksByCategories(categoryIds)
            as Either<Failure, List<TaskHiveModel>>,
      );

  @override
  EResultFuture<List<TaskEntity>> getTasksByDueDate(
    DateTime dueDate,
  ) async =>
      toEntities(
        await _localDataSource.getTasksByDueDate(dueDate)
            as Either<Failure, List<TaskHiveModel>>,
      );

  @override
  EResultFuture<List<TaskEntity>> getTasksByPriority(
    Priority priority,
  ) async =>
      toEntities(
        await _localDataSource.getTasksByPriority(priority)
            as Either<Failure, List<TaskHiveModel>>,
      );

  @override
  EResultFuture<List<TaskEntity>> getTasksByStatus(
    Status status,
  ) async =>
      toEntities(
        await _localDataSource.getTasksByStatus(status)
            as Either<Failure, List<TaskHiveModel>>,
      );

  @override
  EResultFuture<List<TaskEntity>> getTasksByTags(
    List<String> tagIds,
  ) async =>
      toEntities(
        await _localDataSource.getTasksByFixedTags(tagIds)
            as Either<Failure, List<TaskHiveModel>>,
      );

  @override
  EResultFuture<TaskEntity> getTaskByTaskSchedulerId(
    String schedulerId,
  ) async {
    final result = await _localDataSource.getTaskByTaskSchedulerId(schedulerId);
    return result.map((model) => toEntity(model as TaskHiveModel));
  }
}
