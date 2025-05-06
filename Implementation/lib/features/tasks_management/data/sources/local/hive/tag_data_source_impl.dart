import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/tag_data_source.dart';

class TagHiveDataSourceImpl extends HiveDataSource<TagHiveModel>
    implements TagLocalDataSource<TagHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TagHiveModel>] like this
  TagHiveDataSourceImpl({HiveBoxRunner<TagHiveModel>? hiveBox}) : super(hiveServices: hiveBox);
}
