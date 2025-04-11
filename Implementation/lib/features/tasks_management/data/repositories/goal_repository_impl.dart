// import 'package:zamaan/core/repositories/base_crud_operations.dart';
// import 'package:zamaan/core/utils/try_catch.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/features/task/data/sources/bases/goal_data_source.dart';
// import 'package:zamaan/features/task/data/models/local/goal_local_model.dart';
// import 'package:zamaan/features/task/domain/entities/goal_entity.dart';
// import 'package:zamaan/features/task/domain/repositories/goal_repository.dart';

// class GoalRepositoryImpl extends BaseCRUDOperations<GoalEntity, GoalHiveModel,
//     GoalDataSource<GoalHiveModel>> implements GoalRepository {
//   GoalRepositoryImpl(super.localDataSource)
//       : _localDataSource = localDataSource;
//   final GoalDataSource _localDataSource;

//   @override
//   GoalHiveModel fromEntity(GoalEntity entity) =>
//       GoalHiveModel.fromEntity(entity);

//   @override
//   GoalEntity toEntity(GoalHiveModel model) => model.toEntity();

//   @override
//   ResultFuture<List<GoalEntity>> getGoalsByTaskId(
//     String taskId,
//   ) async =>
//       tryCatchEither<List<GoalEntity>>(() async {
//         final entities =
//             await _localDataSource.getGoalsByTaskId(taskId);
//         return entities.map(
//           (either) => either
//               .map<GoalEntity>((model) => toEntity(model as GoalHiveModel))
//               .toList(),
//         );
//       });

//   @override
//   ResultFuture<GoalEntity> getGoalBySubTaskId(String subTaskId) async =>
//       tryCatchEither<GoalEntity>(() async {
//         final entity = await _localDataSource.getGoalBySubTaskId(subTaskId);
//         return entity
//             .map<GoalEntity>((model) => toEntity(model as GoalHiveModel));
//       });
// }
