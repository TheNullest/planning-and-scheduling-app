import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/goal.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/goal_data_source.dart';

class GoalRepositoryImpl extends BaseRepositoryImpl<
    GoalEntity,
    GoalHiveModel,
    GoalSupabaseModel,
    GoalDataSource<GoalHiveModel>,
    GoalDataSource<GoalSupabaseModel>,
    GoalMapper> implements GoalRepository {
  GoalRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final GoalDataSource<GoalHiveModel> _localDataSource;
  final GoalDataSource<GoalSupabaseModel> _remoteDataSource;
  final GoalMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<GoalEntity?> getGoalBySubTaskId(
    String subTaskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getGoalBySubTaskId(subTaskId);
            return Right(_mapper.toEntityFromHive(_mapper.foldEitherSingle(response)!));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getGoalBySubTaskId(subTaskId);
            return Right(_mapper.toEntityFromSupabase(_mapper.foldEitherSingle(response)!));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<GoalEntity>> getGoalsByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getGoalsByTaskId(taskId);
            return Right(_mapper.toEntitiesFromHive(_mapper.foldEitherList(response)));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getGoalsByTaskId(taskId);
            return Right(_mapper.toEntitiesFromSupabase(_mapper.foldEitherList(response)));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
