import 'package:zamaan/domain/usecases/get_entities_usecase.dart';
import 'package:zamaan/domain/entities/category_entity.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';

class GetCategoriesUsecase
    extends GetEntitiesUseCase<CategoryRepository, CategoryEntity> {
  GetCategoriesUsecase(super.repository);
}
