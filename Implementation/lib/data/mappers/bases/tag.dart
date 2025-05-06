import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';

abstract class TagDataMapper extends DataMapper<TagEntity, TagHiveModel, TagSupabaseModel> {}
