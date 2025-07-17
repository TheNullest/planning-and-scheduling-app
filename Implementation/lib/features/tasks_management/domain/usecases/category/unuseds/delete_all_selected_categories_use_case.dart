import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedCategoriesUseCase extends DeleteBatchUseCase<CategoryRepository> {
  DeleteAllSelectedCategoriesUseCase(super.repository);
}
