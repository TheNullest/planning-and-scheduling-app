import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';

class DeleteCategoryUsecase extends DeleteEntityUseCase<CategoryRepository> {
  DeleteCategoryUsecase(super.repository);
}
