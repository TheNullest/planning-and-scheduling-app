import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedCategoriesUsecase extends GetByIdsUsecase<CategoryRepository, CategoryEntity> {
  GetSelectedCategoriesUsecase(super.repository);
}
