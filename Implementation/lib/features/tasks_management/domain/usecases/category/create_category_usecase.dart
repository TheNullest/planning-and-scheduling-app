import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateCategoryUsecase extends CreateUsecase<CategoryRepository, CategoryEntity> {
  CreateCategoryUsecase(super.repository);
}
