import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task_activity.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_activity_data_source.dart';

class TaskActivityRepositoryImpl extends BaseRepositoryImpl<
    TaskActivityEntity,
    TaskActivityHiveModel,
    TaskActivitySupabaseModel,
    TaskActivityDataSource<TaskActivityHiveModel>,
    TaskActivityDataSource<TaskActivitySupabaseModel>,
    TaskActivityMapper> implements TaskActivityRepository {
  TaskActivityRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final TaskActivityDataSource<TaskActivityHiveModel> _localDataSource;
  final TaskActivityDataSource<TaskActivitySupabaseModel> _remoteDataSource;
  final TaskActivityMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<TaskActivityEntity>> getBatchBySubTaskId(
    String subTaskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchBySubTaskId(subTaskId);
            final models = _mapper.foldEitherList<TaskActivityHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchBySubTaskId(subTaskId);
            final models = _mapper.foldEitherList<TaskActivitySupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskActivityEntity>> getBatchByTaskIdAndDateRange({
    required String taskId,
    required DateTime startAt,
    required DateTime dueDate,
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTaskIdAndDateRange(
              taskId: taskId,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<TaskActivityHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskIdAndDateRange(
              taskId: taskId,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<TaskActivitySupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskActivityEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<TaskActivityHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<TaskActivitySupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
