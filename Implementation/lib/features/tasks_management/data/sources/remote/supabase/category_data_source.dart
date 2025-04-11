import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/category_data_source.dart';

class CategorySupabaseDataSourceImpl extends SupabaseDataSource<CategorySupabaseModel>
    implements CategoryDataSource<CategorySupabaseModel> {
  CategorySupabaseDataSourceImpl({
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
    required super.mapper,
  });
}
