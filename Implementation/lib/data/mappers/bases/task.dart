import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';

abstract class TaskDataMapper extends DataMapper<TaskEntity, TaskHiveModel, TaskSupabaseModel> {}
