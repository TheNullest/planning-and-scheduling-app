import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/enums/priority.dart';
import 'package:zamaan/core/enums/task_status.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/sub_task.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/sub_task_data_source.dart';

class SubTaskRepositoryImpl extends BaseRepositoryImpl<
    SubTaskEntity,
    SubTaskHiveModel,
    SubTaskSupabaseModel,
    SubTaskDataSource<SubTaskHiveModel>,
    SubTaskDataSource<SubTaskSupabaseModel>,
    SubTaskMapper> implements SubTaskRepository {
  SubTaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final SubTaskDataSource<SubTaskHiveModel> _localDataSource;
  final SubTaskDataSource<SubTaskSupabaseModel> _remoteDataSource;
  final SubTaskMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(
    Priority priority, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByPriority(priority);
            final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByPriority(priority);
            final models = _mapper.foldEitherList<SubTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(
    TaskStatus status, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByStatus(status);
            final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByStatus(status);
            final models = _mapper.foldEitherList<SubTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<SubTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
