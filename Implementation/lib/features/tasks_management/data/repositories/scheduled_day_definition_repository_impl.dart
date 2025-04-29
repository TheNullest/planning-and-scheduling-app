import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/scheduled_day_definition.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/scheduled_day_definition_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_definition/scheduled_day_definition_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_definition_data_source.dart';

class ScheduledDayDefinitionRepositoryImpl extends BaseRepositoryImpl<
    ScheduledDayDefinitionEntity,
    ScheduledDayDefinitionHiveModel,
    ScheduledDayDefinitionSupabaseModel,
    ScheduledDayDefinitionLocalDataSource<ScheduledDayDefinitionHiveModel>,
    SupabaseDataSource<ScheduledDayDefinitionSupabaseModel>,
    Mapper<ScheduledDayDefinitionEntity, ScheduledDayDefinitionHiveModel,
        ScheduledDayDefinitionSupabaseModel>> implements ScheduledDayDefinitionRepository {
  ScheduledDayDefinitionRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final ScheduledDayDefinitionLocalDataSource<ScheduledDayDefinitionHiveModel> _localDataSource;
  final SupabaseDataSource<ScheduledDayDefinitionSupabaseModel> _remoteDataSource;
  final Mapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
}
