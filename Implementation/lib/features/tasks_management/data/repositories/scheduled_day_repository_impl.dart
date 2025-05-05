import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_data_source.dart';

class ScheduledDayRepositoryImpl extends BaseRepositoryImpl<
    ScheduledDayEntity,
    ScheduledDayHiveModel,
    ScheduledDaySupabaseModel,
    ScheduledDayLocalDataSource<ScheduledDayHiveModel>,
    SupabaseDataSource<ScheduledDaySupabaseModel>,
    DataMapper<ScheduledDayEntity, ScheduledDayHiveModel,
        ScheduledDaySupabaseModel>> implements ScheduledDayRepository {
  ScheduledDayRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper= dataMapper,
        _netConnectivity = netConnectivity;

  final ScheduledDayLocalDataSource<ScheduledDayHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledDaySupabaseModel> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
}
