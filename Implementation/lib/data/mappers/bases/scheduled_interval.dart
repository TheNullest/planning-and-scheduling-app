import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';

abstract class ScheduledIntervalDataMapper extends DataMapper<ScheduledIntervalEntity,
    ScheduledIntervalHiveModel, ScheduledIntervalSupabaseModel> {}
