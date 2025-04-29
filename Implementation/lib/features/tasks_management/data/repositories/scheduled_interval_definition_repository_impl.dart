import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_interval_definition.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_definition_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval_definition/scheduled_interval_definition_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_interval_definition_data_source.dart';

class ScheduledIntervalDefinitionRepositoryImpl extends BaseRepositoryImpl<
        ScheduledIntervalDefinitionEntity,
        ScheduledIntervalDefinitionHiveModel,
        ScheduledIntervalDefinitionSupabaseModel,
        ScheduledIntervalDefinitionLocalDataSource<ScheduledIntervalDefinitionHiveModel>,
        SupabaseDataSource<ScheduledIntervalDefinitionSupabaseModel>,
        Mapper<ScheduledIntervalDefinitionEntity, ScheduledIntervalDefinitionHiveModel,
            ScheduledIntervalDefinitionSupabaseModel>>
    implements ScheduledIntervalDefinitionRepository {
  ScheduledIntervalDefinitionRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final ScheduledIntervalDefinitionLocalDataSource<ScheduledIntervalDefinitionHiveModel>
      _localDataSource;
  final SupabaseDataSource<ScheduledIntervalDefinitionSupabaseModel> _remoteDataSource;
  final Mapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
}
