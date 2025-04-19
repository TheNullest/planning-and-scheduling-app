import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/tag_data_source.dart';

class TagHiveDataSourceImpl extends HiveDataSource<TagHiveModel>
    implements TagDataSource<TagHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TagHiveModel>] like this
  TagHiveDataSourceImpl({HiveServices<TagHiveModel>? hiveBox})
      : super(HiveBoxConstants.tagsBox, hiveServices: hiveBox);
}
