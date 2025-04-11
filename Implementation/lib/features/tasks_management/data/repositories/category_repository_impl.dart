import 'package:zamaan/data/mappers/category.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/category_data_source.dart';

class CategoryRepositoryImpl extends BaseRepositoryImpl<
    CategoryEntity,
    CategoryHiveModel,
    CategorySupabaseModel,
    CategoryDataSource<CategoryHiveModel>,
    CategoryDataSource<CategorySupabaseModel>,
    CategoryMapper> implements CategoryRepository {
  CategoryRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  });
}
