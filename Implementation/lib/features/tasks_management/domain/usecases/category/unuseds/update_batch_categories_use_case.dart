import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchCategoriesUseCase extends UpdateBatchUseCase<CategoryRepository, CategoryEntity> {
  UpdateBatchCategoriesUseCase(super.repository);
}
