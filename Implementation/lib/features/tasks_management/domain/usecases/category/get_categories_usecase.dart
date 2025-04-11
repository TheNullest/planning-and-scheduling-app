import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetCategoriesUsecase extends GetAllUsecase<CategoryRepository, CategoryEntity> {
  GetCategoriesUsecase(super.repository);
}
