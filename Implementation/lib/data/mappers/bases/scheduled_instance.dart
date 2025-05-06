import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_instance/scheduled_instance_supabase_model.dart';

abstract class ScheduledInstanceDataMapper extends DataMapper<ScheduledInstanceEntity,
    ScheduledInstanceHiveModel, ScheduledInstanceSupabaseModel> {}
