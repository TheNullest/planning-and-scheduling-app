import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetCategoryUseCase extends FetchByIdUseCase<CategoryRepository, CategoryEntity> {
  GetCategoryUseCase(super.repository);
}
