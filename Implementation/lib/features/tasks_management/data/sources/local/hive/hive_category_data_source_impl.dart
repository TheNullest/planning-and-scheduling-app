import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/category_data_source.dart';

class HiveCategoryDataSourceImpl extends HiveDataSource<CategoryHiveModel>
    implements CategoryDataSource<CategoryHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CategoryHiveModel>] like this
  HiveCategoryDataSourceImpl({HiveServices<CategoryHiveModel>? hiveBox})
      : super(HiveBoxConstants.categoriesBox, hiveServices: hiveBox);
}
