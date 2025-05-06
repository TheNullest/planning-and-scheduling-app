import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';

abstract class ScheduledDayDataMapper
    extends DataMapper<ScheduledDayEntity, ScheduledDayHiveModel, ScheduledDaySupabaseModel> {}
