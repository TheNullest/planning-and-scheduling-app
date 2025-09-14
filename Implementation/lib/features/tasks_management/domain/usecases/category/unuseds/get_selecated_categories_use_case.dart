import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedCategoriesUseCase
    extends GetBatchByIdsUseCase<CategoryRepository, CategoryEntity> {
  GetSelectedCategoriesUseCase(super.repository);
}
