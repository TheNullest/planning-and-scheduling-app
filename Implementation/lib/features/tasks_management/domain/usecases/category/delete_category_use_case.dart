import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteCategoryUseCase extends DeleteUseCase<CategoryRepository> {
  DeleteCategoryUseCase(super.repository);
}
