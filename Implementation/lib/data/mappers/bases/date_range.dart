import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';

abstract class DateRangeDataMapper
    extends DataMapper<DateRangeEntity, DateRangeHiveModel, DateRangeSupabaseModel> {}
