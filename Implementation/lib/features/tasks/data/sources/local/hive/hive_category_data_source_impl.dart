import 'package:zamaan/data/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/features/auth/presentation/constants/hive_box_constants.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/category_local_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/category_data_source.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';

class HiveCategoryDataSourceImpl
    extends BaseLocalDataSourceAbstraction<CategoryLocalModel>
    implements CategoryDataSource<CategoryLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CategoryLocalModel>] like this
  HiveCategoryDataSourceImpl({HiveServices<CategoryLocalModel>? hiveBox})
      : super(HiveBoxConstants.CATEGOREIS_BOX, hiveBox: hiveBox);
}
