import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';

abstract class TaskActivityDataMapper
    extends DataMapper<TaskActivityEntity, TaskActivityHiveModel, TaskActivitySupabaseModel> {}
