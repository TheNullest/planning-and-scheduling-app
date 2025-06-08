import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchCategoriesUsecase extends CreateBatchUsecase<CategoryRepository, CategoryEntity> {
  CreateBatchCategoriesUsecase(super.repository);
}
