import 'package:zamaan/data/sources/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/category_entity.dart';

abstract class CategoryDataSource<CategoryModel extends CategoryEntity>
    extends BaseDataSourceAbstraction<CategoryModel> {}
