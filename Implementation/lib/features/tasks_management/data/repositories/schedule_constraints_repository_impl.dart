import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_constraints_data_source.dart';

class ScheduleConstraintsRepositoryImpl extends BaseRepositoryImpl<
    ScheduleConstraintsEntity,
    ScheduleConstraintsHiveModel,
    ScheduleConstraintsSupabaseModel,
    ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel>,
    SupabaseDataSource<ScheduleConstraintsSupabaseModel, ScheduleConstraintsDataMapper>,
    ScheduleConstraintsDataMapper> implements ScheduleConstraintsRepository {
  ScheduleConstraintsRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduleConstraintsLocalDataSource<ScheduleConstraintsHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduleConstraintsSupabaseModel, DataMapper> _remoteDataSource;
  final ScheduleConstraintsDataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<ScheduleConstraintsEntity?> getByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.getByTaskId(taskId);
      final result = _dataMapper.foldEitherSingle(response);
      if (result == null) return const Right(null);
      return Right(_dataMapper.toEntityFromHive(result));
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByDueDate(
  //   DateTime dueDate, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByDueDate(dueDate);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByDueDate(dueDate);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByRepetitionType(
  //   RepetitionType repetitionType, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByRepetitionType(repetitionType);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByRepetitionType(repetitionType);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getBySpecificTimes(
  //   List<int> specificTimes, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBySpecificTimes(specificTimes);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBySpecificTimes(specificTimes);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByStartTime(
  //   DateTime startTime, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByStartTime(startTime);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByStartTime(startTime);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByTaskId(taskId);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByTimeUnit(
  //   IntervalUnit timeUnit, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByTimeUnit(timeUnit);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByTimeUnit(timeUnit);
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_dataMappertoEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleConstraintsEntity>> getByTaskIdsAndDateRange({
  //   required List<String> taskIds,
  //   required DateTime? startTime,
  //   required DateTime? dueDate,
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getByTaskIdsAndDateRange(
  //             taskIds: taskIds,
  //             startTime: startTime,
  //             dueDate: dueDate,
  //           );
  //           final models = _dataMapperfoldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_dataMappertoEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getByTaskIdsAndDateRange(
  //             taskIds: taskIds,
  //             startTime: startTime,
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
