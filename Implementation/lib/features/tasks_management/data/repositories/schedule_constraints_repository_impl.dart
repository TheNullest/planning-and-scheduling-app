import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';

class ScheduleConstraintRepositoryImpl extends BaseRepositoryImpl<
    ScheduleConstraintEntity,
    ScheduleConstraintHiveModel,
    ScheduleConstraintSupabaseModel,
    ScheduleConstraintLocalDataSource<ScheduleConstraintHiveModel>,
    SupabaseDataSource<ScheduleConstraintSupabaseModel, ScheduleConstraintDataMapper>,
    ScheduleConstraintDataMapper> implements ScheduleConstraintRepository {
  ScheduleConstraintRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduleConstraintLocalDataSource<ScheduleConstraintHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduleConstraintSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByDueDate(
  //   DateTime dueDate, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByDueDate(dueDate);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByDueDate(dueDate);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByRepetitionType(
  //   RepetitionType repetitionType, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByRepetitionType(repetitionType);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByRepetitionType(repetitionType);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchBySpecificTimes(
  //   List<int> specificTimes, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchBySpecificTimes(specificTimes);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchBySpecificTimes(specificTimes);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByStartTime(
  //   DateTime startTime, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByStartTime(startTime);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByStartTime(startTime);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByTimeUnit(
  //   IntervalUnit timeUnit, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTimeUnit(timeUnit);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTimeUnit(timeUnit);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBatchByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startAt,
  //   required DateTime? dueDate,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTaskIdsAndDateRange(
  //             taskIds: taskIds,
  //             startAt: startAt,
  //             dueDate: dueDate,
  //           );
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskIdsAndDateRange(
  //             taskIds: taskIds,
  //             startAt: startAt,
  //             dueDate: dueDate,
  //           );
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
}
