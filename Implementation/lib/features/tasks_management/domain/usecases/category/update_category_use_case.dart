import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateCategoryUseCase extends UpdateUseCase<CategoryEntity, CategoryRepository> {
  UpdateCategoryUseCase(super.repository);
}
