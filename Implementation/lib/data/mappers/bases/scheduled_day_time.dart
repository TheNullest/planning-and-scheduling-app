import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_time_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_time/scheduled_day_time_supabase_model.dart';

abstract class ScheduledDayTimeDataMapper
    extends DataMapper<ScheduledDayTimeEntity, ScheduledDayTimeHiveModel, ScheduledDayTimeSupabaseModel> {}
