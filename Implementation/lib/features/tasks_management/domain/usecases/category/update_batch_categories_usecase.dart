import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchCategoriesUsecase extends UpdateBatchUsecase<CategoryRepository, CategoryEntity> {
  UpdateBatchCategoriesUsecase(super.repository);
}
