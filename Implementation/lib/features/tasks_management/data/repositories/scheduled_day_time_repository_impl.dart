import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/scheduled_day_time.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_day_time_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_time_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_time/scheduled_day_time_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_time_data_source.dart';

class ScheduledDayTimeRepositoryImpl extends BaseRepositoryImpl<
    ScheduledDayTimeEntity,
    ScheduledDayTimeHiveModel,
    ScheduledDayTimeSupabaseModel,
    ScheduledDayTimeLocalDataSource<ScheduledDayTimeHiveModel>,
    SupabaseDataSource<ScheduledDayTimeSupabaseModel, ScheduledDayTimeDataMapper>,
    ScheduledDayTimeDataMapper> implements ScheduledDayTimeRepository {
  ScheduledDayTimeRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduledDayTimeLocalDataSource<ScheduledDayTimeHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledDayTimeSupabaseModel, DataMapper> _remoteDataSource;
  final ScheduledDayTimeDataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<ScheduledDayTimeEntity>> getByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.getByTaskId(taskId);
      final result = _dataMapper.foldEitherSingle(response);
      if (result == null) return const Right([]);
      return Right(_dataMapper.toEntitiesFromHive(result));
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
