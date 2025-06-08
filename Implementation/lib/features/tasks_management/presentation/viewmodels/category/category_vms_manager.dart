import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';

class CategoryVmsManager extends BaseVmsManager<CategoryEntity, CategoryUpsertVM> {
  CategoryVmsManager(
      {required super.userId, required super.selectItem, required super.deselectItem})
      : super(title: 'Category');

  @override
  void addToItems(CategoryEntity entity) {
    items.add(CategoryUpsertVM.fromEntity(category: entity));
    notifyListUpdated();
  }

  @override
  void initItems(List<CategoryEntity> entities) {
    items = entities.map((item) => CategoryUpsertVM.fromEntity(category: item)).toList();
    notifyListUpdated();
  }

  @override
  CategoryUpsertVM newItem([CategoryUpsertVM? item]) =>
      super.newItem(CategoryUpsertVM(userId: userId));
}

// class CategoryVmsManager with ChangeNotifier {
//   CategoryVmsManager({
//     required this.userId,
//     required this.selectCat,
//     required this.deselectCat,
//   }) {
//     _viewStates.addListener(notifyListeners);
//   }

//   final void Function(String id) selectCat;
//   final void Function(String id) deselectCat;

//   final String userId;

//   final _viewStates =
//       UpsertViewStates(insertTitle: 'Create New Category', updateTitle: 'Update The Category');
//   UpsertViewStates get viewStates => _viewStates;

//   late List<CategoryUpsertVM> _categories = [];
//   List<CategoryUpsertVM> get categories => _categories;

//   late bool _listUpdated = true;
//   bool get listUpdated => _listUpdated;
//   void notifyListUpdated() {
//     _listUpdated = !_listUpdated;
//     notifyListeners();
//   }

//   void initCats(List<CategoryEntity> cats) {
//     _categories = cats.map((item) => CategoryUpsertVM.fromEntity(category: item)).toList();
//     notifyListUpdated();
//   }

//   void initSelectedCats(List<String> catIds) => _selectedCats = _categories
//       .where((cat) => cat.isSelected.value = catIds.contains(cat.vmFormController.id))
//       .toList();

//   CategoryUpsertVM newCategory() {
//     _viewStates.isItNew = true;
//     final cat = CategoryUpsertVM(userId: userId);
//     addListenersToVm(cat);
//     return cat;
//   }

//   void addListenersToVm(CategoryUpsertVM vm) {
//     vm.vmFormController.isModified.addListener(() => monitorModifications(vm.vmFormController));
//     vm.vmFormController.canUpsert.addListener(() => monitorModifications(vm.vmFormController));
//   }

//   void removeListenersFromVm(CategoryUpsertVM vm) {
//     vm.vmFormController.isModified.removeListener(() => monitorModifications(vm.vmFormController));
//     vm.vmFormController.canUpsert.removeListener(() => monitorModifications(vm.vmFormController));
//   }

//   /// Synchronizes form modification state with button activation states.
//   ///
//   /// This method is automatically called when:
//   ///   - Form fields are modified (dirty state changes)
//   ///   - Form validation state changes (valid/invalid)
//   ///
//   /// It ensures:
//   ///   1. Reset button is active only when form has modifications
//   ///   2. Submit button is active only when form is valid
//   void monitorModifications(CategoryFormController fromController) {
//     // Update reset button state based on modification status
//     if (viewStates.isResetButtonActive != fromController.isModified.value) {
//       viewStates.isResetButtonActive = fromController.isModified.value;
//     }

//     // Update submit button state based on validity status
//     if (viewStates.isSaveButtonActive != fromController.canUpsert.value) {
//       viewStates.isSaveButtonActive = fromController.canUpsert.value;
//     }
//   }

//   void addToCategories(CategoryEntity category) {
//     _categories.add(CategoryUpsertVM.fromEntity(category: category));
//     notifyListUpdated();
//   }

//   void removeFromCategories(CategoryUpsertVM category) {
//     if (_categories.contains(category)) {
//       _categories.remove(category);
//     }
//     notifyListUpdated();
//   }

//   void catUpdated(String id) {
//     _listUpdated = !_listUpdated;
//     _categories.firstWhere((cat) => cat.vmFormController.id == id).handleEntityUpdated();
//     notifyListeners();
//   }

//   void selectedCatsChanged(CategoryUpsertVM cat, bool isSelected) {
//     isSelected ? selectedCats = [cat] : deSelectCat(cat);
//   }

//   late List<CategoryUpsertVM> _selectedCats = [];
//   List<CategoryUpsertVM> get selectedCats => _selectedCats;
//   set selectedCats(List<CategoryUpsertVM> cats) {
//     for (final cat in cats) {
//       selectCat(cat.vmFormController.id!);
//     }
//     _selectedCats.addAll(cats);
//     notifyListUpdated();
//   }

//   void deSelectCat(CategoryUpsertVM cat) {
//     deselectCat(cat.vmFormController.id!);
//     _selectedCats.remove(cat);
//     notifyListUpdated();
//   }
// }
