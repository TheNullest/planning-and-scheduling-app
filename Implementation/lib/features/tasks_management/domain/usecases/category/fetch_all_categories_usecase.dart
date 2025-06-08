import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class FetchAllCategoriesUsecase extends GetAllUsecase<CategoryRepository, CategoryEntity> {
  FetchAllCategoriesUsecase(super.repository);
}
