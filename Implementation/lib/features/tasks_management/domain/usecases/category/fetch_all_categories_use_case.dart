import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchAllCategoriesUseCase extends FetcBatchAllUseCase<CategoryRepository, CategoryEntity> {
  FetchAllCategoriesUseCase(super.repository);
}
