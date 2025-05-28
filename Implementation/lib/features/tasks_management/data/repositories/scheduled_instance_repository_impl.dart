import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_instance/scheduled_instance_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_instance_data_source.dart';

class ScheduledInstanceRepositoryImpl extends BaseRepositoryImpl<
    ScheduledInstanceEntity,
    ScheduledInstanceHiveModel,
    ScheduledInstanceSupabaseModel,
    ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel>,
    SupabaseDataSource<ScheduledInstanceSupabaseModel, DataMapper>,
    DataMapper<ScheduledInstanceEntity, ScheduledInstanceHiveModel,
        ScheduledInstanceSupabaseModel>> implements ScheduledInstanceRepository {
  ScheduledInstanceRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduledInstanceLocalDataSource<ScheduledInstanceHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledInstanceSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
  @override
  EResultFuture<List<ScheduledInstanceEntity>> getBatchScheduledInstancesByDay(DateTime day) async {
    try {
      final response = await _localDataSource.getBatchByDay(day);
      final models = _dataMapper.foldEitherList<ScheduledInstanceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledInstanceEntity>;
      return Right(entities);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<ScheduledInstanceEntity>> getBatchScheduledInstancesBySchedulerIds(
      List<String> schedulerIds,) async {
    try {
      final response = await _localDataSource.getBatchBySchedulers(schedulerIds);
      final models = _dataMapper.foldEitherList<ScheduledInstanceHiveModel>(response);
      final entities = _dataMapper.toEntitiesFromHive(models) as List<ScheduledInstanceEntity>;
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
}
