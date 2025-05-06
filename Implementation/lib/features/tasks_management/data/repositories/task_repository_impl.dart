import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/task.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/task_data_source.dart';

class TaskRepositoryImpl extends BaseRepositoryImpl<
    TaskEntity,
    TaskHiveModel,
    TaskSupabaseModel,
    TaskLocalDataSource<TaskHiveModel>,
    SupabaseDataSource<TaskSupabaseModel, TaskDataMapper>,
    TaskDataMapper> implements TaskRepository {
  TaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final TaskLocalDataSource<TaskHiveModel> _localDataSource;
  final SupabaseDataSource<TaskSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  // @override
  // EResultFuture<List<TaskEntity>> getBatchByCategories(
  //   List<String> categoryIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByCategories(categoryIds);
  //           final result = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(result));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByCategories(categoryIds);
  //           final result = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(result));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskEntity>> getBatchByPriority(
  //   Priority priority, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByPriority(priority);
  //           final models = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByPriority(priority);
  //           final models = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskEntity>> getBatchByStatus(
  //   TaskStatus status, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByStatus(status);
  //           final models = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByStatus(status);
  //           final models = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskEntity>> getBatchByTags(
  //   List<String> tagIds, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByFixedTags(tagIds);
  //           final result = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(result));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByFixedTags(tagIds);
  //           final result = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(result));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskEntity>> getBatchByDueDateRange({
  //   required DateTime dueDateFrom,
  //   required DateTime dueDateTo,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByDueDateRange(dueDateFrom, dueDateTo);
  //           final result = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(result));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByDueDateRange(dueDateFrom, dueDateTo);
  //           final result = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(result));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskEntity>> getBatchArchived({
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchArchived();
  //           final models = _dataMapperfoldEitherList<TaskHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchArchived();
  //           final models = _dataMapperfoldEitherList<TaskSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
}
