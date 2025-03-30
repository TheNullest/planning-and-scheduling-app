import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/local/hive/tag_data_source.dart';

class HiveTagDataSourceImpl extends BaseLocalDataSourceAbstraction<TagHiveModel>
    implements TagDataSource<TagHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TagHiveModel>] like this
  HiveTagDataSourceImpl({HiveServices<TagHiveModel>? hiveBox})
      : super(HiveBoxConstants.tagsBox, hiveServices: hiveBox);
}
