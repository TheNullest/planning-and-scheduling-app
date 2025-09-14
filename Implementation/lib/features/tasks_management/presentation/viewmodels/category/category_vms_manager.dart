import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';

class CategoryVmsManager extends BaseVmsManager<CategoryEntity, CategoryUpsertVM> {
  CategoryVmsManager(
      {required super.userId, required super.selectItem, required super.deselectItem});

  @override
  void initItems(List<CategoryEntity> entities) {
    persistedItems = entities.map((item) => CategoryUpsertVM.fromEntity(entity: item)).toList();
    notifyListeners();
  }

  @override
  CategoryUpsertVM newItem([CategoryUpsertVM? item]) => CategoryUpsertVM(userId: userId);

  @override
  CategoryUpsertVM toViewModel(CategoryEntity entity) =>
      CategoryUpsertVM.fromEntity(entity: entity);
}
