import 'package:zamaan/data/mappers/bases/date_range.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
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
  });
}
