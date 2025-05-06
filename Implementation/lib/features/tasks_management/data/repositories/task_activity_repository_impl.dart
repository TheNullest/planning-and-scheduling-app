import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/task_activity.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/task_activity_data_source.dart';

class TaskActivityRepositoryImpl extends BaseRepositoryImpl<
    TaskActivityEntity,
    TaskActivityHiveModel,
    TaskActivitySupabaseModel,
    TaskActivityLocalDataSource<TaskActivityHiveModel>,
    SupabaseDataSource<TaskActivitySupabaseModel, TaskActivityDataMapper>,
    TaskActivityDataMapper> implements TaskActivityRepository {
  TaskActivityRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final TaskActivityLocalDataSource<TaskActivityHiveModel> _localDataSource;
  final SupabaseDataSource<TaskActivitySupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  // @override
  // EResultFuture<List<TaskActivityEntity>> getBatchBySubTaskId(
  //   String subTaskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchBySubTaskId(subTaskId);
  //           final models = _dataMapperfoldEitherList<TaskActivityHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchBySubTaskId(subTaskId);
  //           final models = _dataMapperfoldEitherList<TaskActivitySupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskActivityEntity>> getBatchByTaskIdAndDateRange({
  //   required String taskId,
  //   required DateTime startAt,
  //   required DateTime dueDate,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTaskIdAndDateRange(
  //             taskId: taskId,
  //             startAt: startAt,
  //             dueDate: dueDate,
  //           );
  //           final models = _dataMapperfoldEitherList<TaskActivityHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskIdAndDateRange(
  //             taskId: taskId,
  //             startAt: startAt,
  //             dueDate: dueDate,
  //           );
  //           final models = _dataMapperfoldEitherList<TaskActivitySupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<TaskActivityEntity>> getBatchByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<TaskActivityHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<TaskActivitySupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
}
