import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetCategoryUsecase extends GetByIdUsecase<CategoryRepository, CategoryEntity> {
  GetCategoryUsecase(super.repository);
}
