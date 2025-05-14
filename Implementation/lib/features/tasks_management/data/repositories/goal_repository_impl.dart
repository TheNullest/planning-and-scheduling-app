import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/goal.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/goal_data_source.dart';

class GoalRepositoryImpl extends BaseRepositoryImpl<
    GoalEntity,
    GoalHiveModel,
    GoalSupabaseModel,
    GoalLocalDataSource<GoalHiveModel>,
    SupabaseDataSource<GoalSupabaseModel, GoalDataMapper>,
    GoalDataMapper> implements GoalRepository {
  GoalRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final GoalLocalDataSource<GoalHiveModel> _localDataSource;
  final SupabaseDataSource<GoalSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
  @override
  EResultFuture<GoalEntity?> getGoalBySubTaskId(String subTaskId) async {
    try {
      final response = await _localDataSource.getGoalBySubTaskId(subTaskId);
      final goalEntity =
          _dataMapper.toEntityFromHive(_dataMapper.foldEitherSingle(response)) as GoalEntity?;
      return Right(goalEntity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<GoalEntity>> getGoalsByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.getGoalsByTaskId(taskId);
      final goals =
          _dataMapper.toEntitiesFromHive(_dataMapper.foldEitherList(response)) as List<GoalEntity>;
      return Right(goals);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
