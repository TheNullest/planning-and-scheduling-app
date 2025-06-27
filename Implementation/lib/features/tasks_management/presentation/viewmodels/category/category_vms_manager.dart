import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';

class CategoryVmsManager extends BaseVmsManager<CategoryEntity, CategoryUpsertVM> {
  CategoryVmsManager(
      {required super.userId, required super.selectItem, required super.deselectItem});

  @override
  void initItems(List<CategoryEntity> entities) {
    items = entities.map((item) => CategoryUpsertVM.fromEntity(entity: item)).toList();
    notifyListUpdated();
  }

  @override
  CategoryUpsertVM newItem([CategoryUpsertVM? item]) =>
      super.newItem(CategoryUpsertVM(userId: userId));

  @override
  CategoryUpsertVM toViewModel(CategoryEntity entity) =>
      CategoryUpsertVM.fromEntity(entity: entity);
}
