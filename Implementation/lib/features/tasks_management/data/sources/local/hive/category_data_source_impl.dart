import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/category_data_source.dart';

class CategoryHiveDataSourceImpl extends HiveDataSource<CategoryHiveModel>
    implements CategoryLocalDataSource<CategoryHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CategoryHiveModel>] like this
  CategoryHiveDataSourceImpl();
}
