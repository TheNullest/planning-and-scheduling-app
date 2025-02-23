import 'package:zamaan/core/sources/base_data_source_abstraction.dart';
import 'package:zamaan/features/category/domain/entities/category_entity.dart';

abstract class CategoryDataSource<CategoryModel extends CategoryEntity>
    extends BaseDataSourceAbstraction<CategoryModel> {}
