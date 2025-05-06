import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';

abstract class SubTaskDataMapper
    extends DataMapper<SubTaskEntity, SubTaskHiveModel, SubTaskSupabaseModel> {}
