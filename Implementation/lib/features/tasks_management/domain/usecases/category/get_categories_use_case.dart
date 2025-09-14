import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetCategoriesUseCase extends FetcBatchAllUseCase<CategoryRepository, CategoryEntity> {
  GetCategoriesUseCase(super.repository);
}
