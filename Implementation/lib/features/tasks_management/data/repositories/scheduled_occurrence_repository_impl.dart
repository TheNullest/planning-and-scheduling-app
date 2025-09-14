import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/scheduled_occurrence.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_occurrence_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_occurrence/scheduled_occurrence_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_occurrence_data_source.dart';

class ScheduledOccurrenceRepositoryImpl extends BaseRepositoryImpl<
    ScheduledOccurrenceEntity,
    ScheduledOccurrenceHiveModel,
    ScheduledOccurrenceSupabaseModel,
    ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel>,
    SupabaseDataSource<ScheduledOccurrenceSupabaseModel, ScheduledOccurrenceDataMapper>,
    ScheduledOccurrenceDataMapper> implements ScheduledOccurrenceRepository {
  ScheduledOccurrenceRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduledOccurrenceLocalDataSource<ScheduledOccurrenceHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledOccurrenceSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> getByDate(DateTime date) async {
    try {
      final response = await _localDataSource.getByDate(date);
      final models = _dataMapper.foldEitherList<ScheduledOccurrenceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledOccurrenceEntity>;
      return Right(entities);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> getByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.getByTaskId(taskId);
      final models = _dataMapper.foldEitherList<ScheduledOccurrenceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledOccurrenceEntity>;
      return Right(entities);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> getUpcomingByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.getUpcomingByTaskId(taskId);
      final models = _dataMapper.foldEitherList<ScheduledOccurrenceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledOccurrenceEntity>;
      return Right(entities);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> getBySchedulerIds(
    List<String> schedulerIds,
  ) async {
    try {
      final response = await _localDataSource.getBySchedulerIds(schedulerIds);
      final models = _dataMapper.foldEitherList<ScheduledOccurrenceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledOccurrenceEntity>;
      return Right(entities);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid deleteBySchedulerIds(List<String> schedulerIds) async {
    try {
      // Assuming _localDataSource.deleteBySchedulerIds returns an EResultFutureVoid already.
      return await _localDataSource.deleteBySchedulerIds(schedulerIds);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid deleteByTaskId(String taskId) async {
    try {
      // Assuming _localDataSource.deleteBySchedulerIds returns an EResultFutureVoid already.
      return await _localDataSource.deleteByTaskId(taskId);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
