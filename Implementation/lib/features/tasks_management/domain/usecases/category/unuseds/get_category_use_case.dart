import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetCategoryUseCase extends GetByIdUseCase<CategoryRepository, CategoryEntity> {
  GetCategoryUseCase(super.repository);
}
