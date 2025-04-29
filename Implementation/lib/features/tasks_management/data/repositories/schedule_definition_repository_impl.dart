import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_definition/schedule_definition_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/schedule_definition_data_source.dart';

class ScheduleDefinitionRepositoryImpl extends BaseRepositoryImpl<
    ScheduleDefinitionEntity,
    ScheduleDefinitionHiveModel,
    ScheduleDefinitionSupabaseModel,
    ScheduleDefinitionLocalDataSource<ScheduleDefinitionHiveModel>,
    SupabaseDataSource<ScheduleDefinitionSupabaseModel>,
    Mapper<ScheduleDefinitionEntity, ScheduleDefinitionHiveModel,
        ScheduleDefinitionSupabaseModel>> implements ScheduleDefinitionRepository {
  ScheduleDefinitionRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final ScheduleDefinitionLocalDataSource<ScheduleDefinitionHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduleDefinitionSupabaseModel> _remoteDataSource;
  final Mapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByDueDate(
  //   DateTime dueDate, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByDueDate(dueDate);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByDueDate(dueDate);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByRepetitionType(
  //   RepetitionType repetitionType, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByRepetitionType(repetitionType);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByRepetitionType(repetitionType);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchBySpecificTimes(
  //   List<int> specificTimes, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchBySpecificTimes(specificTimes);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchBySpecificTimes(specificTimes);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByStartTime(
  //   DateTime startTime, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByStartTime(startTime);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByStartTime(startTime);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTaskId(
  //   String taskId, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTaskId(taskId);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskId(taskId);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTimeUnit(
  //   IntervalUnit timeUnit, {
  //   DataSourcePolicy policy = DataSourcePolicy.localOnly,
  // }) async =>
  //     tryCatchEither(
  //       action: () async {
  //         if (DataSourcePolicy.isLocal(policy)) {
  //           final response = await _localDataSource.getBatchByTimeUnit(timeUnit);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTimeUnit(timeUnit);
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );

  // @override
  // EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTaskIdsAndDateRange({
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
  //           final models = _mapper.foldEitherList<ScheduleDefinitionHiveModel>(response);
  //           return Right(_mapper.toEntitiesFromHive(models));
  //         }
  //         if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
  //           final response = await _remoteDataSource.getBatchByTaskIdsAndDateRange(
  //             taskIds: taskIds,
  //             startAt: startAt,
  //             dueDate: dueDate,
  //           );
  //           final models = _mapper.foldEitherList<ScheduleDefinitionSupabaseModel>(response);
  //           return Right(_mapper.toEntitiesFromSupabase(models));
  //         }
  //         return const Right([]);
  //       },
  //       failureType: FailureType.local,
  //     );
}
