import 'package:zamaan/domain/entities/category_entity.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetCategoryUsecase
    extends GetEntityUseCase<CategoryRepository, CategoryEntity> {
  GetCategoryUsecase(super.repository);
}
