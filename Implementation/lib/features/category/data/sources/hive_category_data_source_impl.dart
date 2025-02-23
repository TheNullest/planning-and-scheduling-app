import 'package:zamaan/core/constants/hive_box_names.dart';
import 'package:zamaan/core/services/hive_services.dart';
import 'package:zamaan/core/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/features/category/data/models/category_local_model.dart';
import 'package:zamaan/features/category/data/sources/category_data_source.dart';

class HiveCategoryDataSourceImpl
    extends BaseLocalDataSourceAbstraction<CategoryLocalModel>
    implements CategoryDataSource<CategoryLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CategoryLocalModel>] like this
  HiveCategoryDataSourceImpl({HiveServices<CategoryLocalModel>? hiveBox})
      : super(HiveBoxConstants.CATEGOREIS_BOX, hiveBox: hiveBox);
}
