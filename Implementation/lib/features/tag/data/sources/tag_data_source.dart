import 'package:zamaan/core/sources/base_data_source_abstraction.dart';
import 'package:zamaan/features/tag/domain/entities/tag_entity.dart';

abstract class TagDataSource<TagModel extends TagEntity>
    extends BaseDataSourceAbstraction<TagModel> {}
