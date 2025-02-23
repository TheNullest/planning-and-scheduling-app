import 'package:zamaan/core/usecases/update_entity_usecase.dart';
import 'package:zamaan/features/category/domain/entities/category_entity.dart';
import 'package:zamaan/features/category/domain/repositories/category_repository.dart';

class UpdateCategoryUsecase
    extends UpdateEntityUseCase<CategoryEntity, CategoryRepository> {
  UpdateCategoryUsecase(super.repository);
}
