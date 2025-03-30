import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedCategoriesUsecase
    extends DeleteEntitiesUseCase<CategoryRepository> {
  DeleteAllSelectedCategoriesUsecase(super.repository);
}
