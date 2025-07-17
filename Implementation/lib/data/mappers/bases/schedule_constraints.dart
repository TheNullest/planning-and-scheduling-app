import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

abstract class ScheduleConstraintsDataMapper extends DataMapper<ScheduleConstraintsEntity,
    ScheduleConstraintsHiveModel, ScheduleConstraintsSupabaseModel> {}
