import 'package:zamaan/data/mappers/bases/category.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';

class CategorySupabaseDataSourceImpl
    extends SupabaseDataSource<CategorySupabaseModel, CategoryDataMapper> {
  CategorySupabaseDataSourceImpl({
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
    required super.dataMapper,
  });
}
