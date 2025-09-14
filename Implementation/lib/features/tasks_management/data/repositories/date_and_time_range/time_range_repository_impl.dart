import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/time_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/time_range_source.dart';

class TimeRangeRepositoryImpl extends BaseRepositoryImpl<
    TimeRangeEntity,
    TimeRangeHiveModel,
    TimeRangeSupabaseModel,
    TimeRangeLocalDataSource<TimeRangeHiveModel>,
    SupabaseDataSource<TimeRangeSupabaseModel, TimeRangeDataMapper>,
    TimeRangeDataMapper> implements TimeRangeRepository {
  TimeRangeRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final TimeRangeLocalDataSource<TimeRangeHiveModel> _localDataSource;
  final SupabaseDataSource<TimeRangeSupabaseModel, TimeRangeDataMapper> _remoteDataSource;
  final TimeRangeDataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<TimeRangeEntity>> getByTaskId(String taskId) async {
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
