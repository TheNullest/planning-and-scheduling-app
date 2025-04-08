// import 'package:dartz/dartz.dart';
// import 'package:zamaan/core/error/failures/failure.dart';
// import 'package:zamaan/core/repositories/base_crud_operations.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/features/task/data/sources/bases/time_interval_data_source.dart';
// import 'package:zamaan/features/task/data/models/local/time_interval_local_model.dart';
// import 'package:zamaan/features/task/domain/entities/time_interval_entity.dart';
// import 'package:zamaan/features/task/domain/params/get_by_task_ids_and_date_range_params.dart';
// import 'package:zamaan/features/task/domain/repositories/time_interval_repository.dart';

// class TaskActivityRepositoryImpl extends BaseCRUDOperations<TaskActivityEntity,
//         TaskActivityHiveModel, TaskActivityDataSource<TaskActivityHiveModel>>
//     implements TaskActivityRepository {
//   TaskActivityRepositoryImpl(super.localDataSource)
//       : _localDataSource = localDataSource;
//   final TaskActivityDataSource _localDataSource;

//   @override
//   TaskActivityHiveModel fromEntity(TaskActivityEntity entity) =>
//       TaskActivityHiveModel.fromEntity(entity);

//   @override
//   TaskActivityEntity toEntity(TaskActivityHiveModel model) => model.toEntity();

//   Either<Failure, List<TaskActivityEntity>> toEntities(
//     Either<Failure, List<TaskActivityHiveModel>> models,
//   ) =>
//       models.map(
//         (taskModels) => taskModels
//             .map<TaskActivityEntity>((taskModel) => taskModel.toEntity())
//             .toList(),
//       );

//   @override
//   ResultFuture<List<TaskActivityEntity>>
//       getTaskActivityByTaskIdAndDateRange(
//     GetByTaskIdsAndDateRangeParams params,
//   ) async =>
//           toEntities(
//             await _localDataSource.getTaskActivityByTaskIdAndDateRange(
//               mainTaskIds: params.mainTaskIds,
//               startAt: params.startAt,
//               endAt: params.endAt,
//             ) as Either<Failure, List<TaskActivityHiveModel>>,
//           );

//   @override
//   ResultFuture<List<TaskActivityEntity>> getTaskActivityBySubTaskId(
//     String subTaskId,
//   ) async =>
//       toEntities(
//         await _localDataSource.getTaskActivityBySubTaskId(subTaskId)
//             as Either<Failure, List<TaskActivityHiveModel>>,
//       );
// }
