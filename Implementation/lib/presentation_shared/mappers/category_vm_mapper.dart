import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/presentation/models/category_vm.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class CategoryVMMapper extends ViewModelMapper<CategoryVM, CategoryEntity> {
  @override
  CategoryEntity toEntity(CategoryVM model) {
    // TODO: implement toEntity
    throw UnimplementedError();
  }

  @override
  CategoryVM toVM(CategoryEntity entity, {Map<String, dynamic>? relations}) {
    // TODO: implement toVM
    throw UnimplementedError();
  }
}
