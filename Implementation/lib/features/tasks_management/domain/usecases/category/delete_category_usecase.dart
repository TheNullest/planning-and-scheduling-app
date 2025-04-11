import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteCategoryUsecase extends DeleteUsecase<CategoryRepository> {
  DeleteCategoryUsecase(super.repository);
}
