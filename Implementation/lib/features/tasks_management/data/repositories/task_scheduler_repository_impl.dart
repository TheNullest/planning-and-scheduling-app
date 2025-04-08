// import 'package:dartz/dartz.dart';
// import 'package:zamaan/core/enums/enums.dart';
// import 'package:zamaan/core/error/failures/failure.dart';
// import 'package:zamaan/core/repositories/base_crud_operations.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/features/task/data/sources/bases/task_scheduler_data_source.dart';
// import 'package:zamaan/features/task/data/models/local/task_scheduler_local_model.dart';
// import 'package:zamaan/features/task/domain/entities/task_scheduler_entity.dart';
// import 'package:zamaan/features/task/domain/params/get_by_task_ids_and_date_range_params.dart';
// import 'package:zamaan/features/task/domain/repositories/task_scheduler_repository.dart';

// class TaskSchedulerRepositoryImpl extends BaseCRUDOperations<
//         TaskSchedulerEntity,
//         TaskSchedulerHiveModel,
//         TaskSchedulerDataSource<TaskSchedulerHiveModel>>
//     implements TaskSchedulerRepository {
//   TaskSchedulerRepositoryImpl(super.localDataSource)
//       : _localDataSource = localDataSource;
//   final TaskSchedulerDataSource _localDataSource;

//   @override
//   TaskSchedulerHiveModel fromEntity(TaskSchedulerEntity entity) =>
//       TaskSchedulerHiveModel.fromEntity(entity);

//   @override
//   TaskSchedulerEntity toEntity(TaskSchedulerHiveModel model) =>
//       model.toEntity();

//   Either<Failure, List<TaskSchedulerEntity>> toEntities(
//     Either<Failure, List<TaskSchedulerHiveModel>> models,
//   ) =>
//       models.map(
//         (taskModels) => taskModels
//             .map<TaskSchedulerEntity>((taskModel) => taskModel.toEntity())
//             .toList(),
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>>
//       getTaskSchedulersByTaskIdsAndDateRange(
//     GetByTaskIdsAndDateRangeParams params,
//   ) async =>
//           toEntities(
//             await _localDataSource.getTaskSchedulersByTaskIdsAndDateRange(
//               mainTaskIds: params.mainTaskIds,
//               startAt: params.startAt,
//               endAt: params.endAt,
//             ) as Either<Failure, List<TaskSchedulerHiveModel>>,
//           );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersByEndTime(
//     DateTime endTime,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersByEndTime(endTime)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersByTaskId(
//     String taskId,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersByTaskId(taskId)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersByRepetitionType(
//     RepetitionType repetitionType,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersByRepetitionType(repetitionType)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersBySpecificTimes(
//     List<int> specificTimes,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersBySpecificTimes(specificTimes)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersByStartTime(
//     DateTime startTime,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersByStartTime(startTime)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersByTimeUnit(
//     TimeUnit timeUnit,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersByTimeUnit(timeUnit)
//             as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );

//   @override
//   ResultFuture<List<TaskSchedulerEntity>> getTaskSchedulersWithinDateRange({
//     required DateTime startDate,
//     required DateTime endDate,
//   }) async =>
//       toEntities(
//         await _localDataSource.getTaskSchedulersWithinDateRange(
//           startDate: startDate,
//           endDate: endDate,
//         ) as Either<Failure, List<TaskSchedulerHiveModel>>,
//       );
// }
