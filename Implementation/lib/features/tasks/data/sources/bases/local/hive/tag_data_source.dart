import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/tag_entity.dart';

abstract class TagDataSource<TagModel extends TagEntity>
    extends BaseDataSourceAbstraction<TagModel> {}
