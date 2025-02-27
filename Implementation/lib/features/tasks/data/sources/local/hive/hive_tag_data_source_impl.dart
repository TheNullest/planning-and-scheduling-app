import 'package:zamaan/core/constants/hive_box_names.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';
import 'package:zamaan/data/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/tag_local_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/tag_data_source.dart';

class HiveTagDataSourceImpl
    extends BaseLocalDataSourceAbstraction<TagLocalModel>
    implements TagDataSource<TagLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<TagLocalModel>] like this
  HiveTagDataSourceImpl({HiveServices<TagLocalModel>? hiveBox})
      : super(HiveBoxConstants.TAGS_BOX, hiveBox: hiveBox);
}
