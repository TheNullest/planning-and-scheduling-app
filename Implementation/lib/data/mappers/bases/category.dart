import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';

abstract class CategoryDataMapper
    extends DataMapper<CategoryEntity, CategoryHiveModel, CategorySupabaseModel> {}
