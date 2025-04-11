import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateCategoryUsecase extends UpdateUsecase<CategoryEntity, CategoryRepository> {
  UpdateCategoryUsecase(super.repository);
}
