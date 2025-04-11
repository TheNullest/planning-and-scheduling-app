import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_data_source.dart';

class TaskRepositoryImpl extends BaseRepositoryImpl<
    TaskEntity,
    TaskHiveModel,
    TaskSupabaseModel,
    TaskDataSource<TaskHiveModel>,
    TaskDataSource<TaskSupabaseModel>,
    TaskMapper> implements TaskRepository {
  TaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final TaskDataSource<TaskHiveModel> _localDataSource;
  final TaskDataSource<TaskSupabaseModel> _remoteDataSource;
  final TaskMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<TaskEntity>> getBatchByCategories(
    List<String> categoryIds, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByCategories(categoryIds);
            final result = _mapper.foldEitherList<TaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByCategories(categoryIds);
            final result = _mapper.foldEitherList<TaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskEntity>> getBatchByPriority(
    Priority priority, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByPriority(priority);
            final models = _mapper.foldEitherList<TaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByPriority(priority);
            final models = _mapper.foldEitherList<TaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskEntity>> getBatchByStatus(
    Status status, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByStatus(status);
            final models = _mapper.foldEitherList<TaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(models));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByStatus(status);
            final models = _mapper.foldEitherList<TaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(models));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskEntity>> getBatchByTags(
    List<String> tagIds, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByFixedTags(tagIds);
            final result = _mapper.foldEitherList<TaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByFixedTags(tagIds);
            final result = _mapper.foldEitherList<TaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<TaskEntity?> getBatchByTaskSchedulerId(
    String schedulerId, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getByTaskSchedulerId(schedulerId);
            final model = _mapper.foldEitherSingle<TaskHiveModel>(response);
            return Right(_mapper.toEntityFromHive(model!));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getByTaskSchedulerId(schedulerId);
            final model = _mapper.foldEitherSingle<TaskSupabaseModel>(response);
            return Right(_mapper.toEntityFromSupabase(model!));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<TaskEntity>> getBatchByDueDateRange({
    required DateTime dueDateFrom,
    required DateTime dueDateTo,
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getBatchByDueDateRange(dueDateFrom, dueDateTo);
            final result = _mapper.foldEitherList<TaskHiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getBatchByDueDateRange(dueDateFrom, dueDateTo);
            final result = _mapper.foldEitherList<TaskSupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
