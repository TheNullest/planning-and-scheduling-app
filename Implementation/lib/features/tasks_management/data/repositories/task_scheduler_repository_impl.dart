import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/enums/repetition_type_enum.dart';
import 'package:zamaan/core/enums/time_unit_enum.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task_scheduler.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_scheduler/task_scheduler_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_scheduler_data_source.dart';

class TaskSchedulerRepositoryImpl extends BaseRepositoryImpl<
    TaskSchedulerEntity,
    TaskSchedulerHiveModel,
    TaskSchedulerSupabaseModel,
    TaskSchedulerDataSource<TaskSchedulerHiveModel>,
    TaskSchedulerDataSource<TaskSchedulerSupabaseModel>,
    TaskSchedulerMapper> implements TaskSchedulerRepository {
  TaskSchedulerRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final TaskSchedulerDataSource<TaskSchedulerHiveModel> _localDataSource;
  final TaskSchedulerDataSource<TaskSchedulerSupabaseModel> _remoteDataSource;
  final TaskSchedulerMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByDueDate(
    DateTime dueDate, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByDueDate(dueDate);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByDueDate(dueDate);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByRepetitionType(
    RepetitionType repetitionType, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByRepetitionType(repetitionType);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByRepetitionType(repetitionType);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchBySpecificTimes(
    List<int> specificTimes, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchBySpecificTimes(specificTimes);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchBySpecificTimes(specificTimes);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByStartTime(
    DateTime startTime, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByStartTime(startTime);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByStartTime(startTime);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskId(taskId);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByTimeUnit(
    TimeUnit timeUnit, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByTimeUnit(timeUnit);
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTimeUnit(timeUnit);
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskSchedulerEntity>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByTaskIdsAndDateRange(
              taskIds: taskIds,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<TaskSchedulerHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByTaskIdsAndDateRange(
              taskIds: taskIds,
              startAt: startAt,
              dueDate: dueDate,
            );
            final models = _mapper.foldEitherList<TaskSchedulerSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
