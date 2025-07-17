import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateCategoryUseCase extends CreateUseCase<CategoryRepository, CategoryEntity> {
  CreateCategoryUseCase(super.repository);
}
