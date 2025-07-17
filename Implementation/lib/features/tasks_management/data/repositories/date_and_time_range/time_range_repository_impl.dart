import 'package:zamaan/data/mappers/bases/time_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/time_range_hive_model.dart';
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
  });
}
