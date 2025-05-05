import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_interval_data_source.dart';

class ScheduledIntervalRepositoryImpl extends BaseRepositoryImpl<
    ScheduledIntervalEntity,
    ScheduledIntervalHiveModel,
    ScheduledIntervalSupabaseModel,
    ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel>,
    SupabaseDataSource<ScheduledIntervalSupabaseModel>,
    DataMapper<ScheduledIntervalEntity, ScheduledIntervalHiveModel,
        ScheduledIntervalSupabaseModel>> implements ScheduledIntervalRepository {
  ScheduledIntervalRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduledIntervalLocalDataSource<ScheduledIntervalHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledIntervalSupabaseModel> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
}
