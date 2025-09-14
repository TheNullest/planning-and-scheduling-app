import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/date_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/constraint_date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/date_range_source.dart';

class DateRangeRepositoryImpl extends BaseRepositoryImpl<
    DateRangeEntity,
    DateRangeHiveModel,
    DateRangeSupabaseModel,
    DateRangeLocalDataSource<DateRangeHiveModel>,
    SupabaseDataSource<DateRangeSupabaseModel, DateRangeDataMapper>,
    DateRangeDataMapper> implements DateRangeRepository {
  DateRangeRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final DateRangeLocalDataSource<DateRangeHiveModel> _localDataSource;
  final SupabaseDataSource<DateRangeSupabaseModel, DateRangeDataMapper> _remoteDataSource;
  final DateRangeDataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<DateRangeEntity>> getByTaskId(String taskId) async {
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
