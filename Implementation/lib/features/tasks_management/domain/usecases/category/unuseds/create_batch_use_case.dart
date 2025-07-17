import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchCategoriesUseCase extends CreateBatchUseCase<CategoryRepository, CategoryEntity> {
  CreateBatchCategoriesUseCase(super.repository);
}
