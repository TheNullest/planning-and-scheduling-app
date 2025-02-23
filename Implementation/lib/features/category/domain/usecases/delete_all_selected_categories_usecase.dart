import 'package:zamaan/core/usecases/delete_entities_usecase.dart';
import 'package:zamaan/features/category/domain/repositories/category_repository.dart';

class DeleteAllSelectedCategoriesUsecase
    extends DeleteEntitiesUseCase<CategoryRepository> {
  DeleteAllSelectedCategoriesUsecase(super.repository);
}
