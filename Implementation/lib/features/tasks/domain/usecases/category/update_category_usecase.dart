import 'package:zamaan/domain/usecases/update_entity_usecase.dart';
import 'package:zamaan/domain/entities/category_entity.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';

class UpdateCategoryUsecase
    extends UpdateEntityUseCase<CategoryEntity, CategoryRepository> {
  UpdateCategoryUsecase(super.repository);
}
