import 'package:zamaan/domain/usecases/create_entity_usecase.dart';
import 'package:zamaan/domain/entities/category_entity.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';

class CreateCategoryUsecase
    extends CreateEntityUseCase<CategoryRepository, CategoryEntity> {
  CreateCategoryUsecase(super.repository);
}
