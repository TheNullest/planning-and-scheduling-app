import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/enums/repetition_type.dart';
import 'package:zamaan/core/enums/time_unit.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/scheduled_task.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduled_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_task/scheduled_task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/scheduled_task_data_source.dart';

class ScheduledTaskRepositoryImpl extends BaseRepositoryImpl<
    ScheduledTaskEntity,
    ScheduledTaskHiveModel,
    ScheduledTaskSupabaseModel,
    ScheduledTaskDataSource<ScheduledTaskHiveModel>,
    ScheduledTaskDataSource<ScheduledTaskSupabaseModel>,
    ScheduledTaskMapper> implements ScheduledTaskRepository {
  ScheduledTaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final ScheduledTaskDataSource<ScheduledTaskHiveModel> _localDataSource;
  final ScheduledTaskDataSource<ScheduledTaskSupabaseModel> _remoteDataSource;
  final ScheduledTaskMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByDueDate(
    DateTime dueDate, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByDueDate(dueDate);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByDueDate(dueDate);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByRepetitionType(
    RepetitionType repetitionType, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByRepetitionType(repetitionType);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByRepetitionType(repetitionType);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchBySpecificTimes(
    List<int> specificTimes, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchBySpecificTimes(specificTimes);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchBySpecificTimes(specificTimes);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByStartTime(
    DateTime startTime, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByStartTime(startTime);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByStartTime(startTime);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByTimeUnit(
    TimeUnit timeUnit, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTimeUnit(timeUnit);
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTimeUnit(timeUnit);
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<ScheduledTaskEntity>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getBatchByTaskIdsAndDateRange(
              taskIds: taskIds,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<ScheduledTaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskIdsAndDateRange(
              taskIds: taskIds,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<ScheduledTaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
