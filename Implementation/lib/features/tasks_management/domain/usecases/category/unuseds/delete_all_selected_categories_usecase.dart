import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedCategoriesUsecase extends DeleteBatchUsecase<CategoryRepository> {
  DeleteAllSelectedCategoriesUsecase(super.repository);
}
