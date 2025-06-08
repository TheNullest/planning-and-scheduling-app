import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';

class TagVmsManager extends BaseVmsManager<TagEntity, TagUpsertVM> {
  TagVmsManager({required super.userId, required super.selectItem, required super.deselectItem})
      : super(title: 'Tag');

  @override
  void addToItems(TagEntity entity) {
    items.add(TagUpsertVM.fromEntity(category: entity));
    notifyListUpdated();
  }

  @override
  void initItems(List<TagEntity> entities) {
    items = entities.map((item) => TagUpsertVM.fromEntity(category: item)).toList();
    notifyListUpdated();
  }

  @override
  TagUpsertVM newItem([TagUpsertVM? item]) => super.newItem(TagUpsertVM(userId: userId));
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

//   late List<TagUpsertVM> _categories = [];
//   List<TagUpsertVM> get categories => _categories;

//   late bool _listUpdated = true;
//   bool get listUpdated => _listUpdated;
//   void notifyListUpdated() {
//     _listUpdated = !_listUpdated;
//     notifyListeners();
//   }

//   void initCats(List<TagEntity> cats) {
//     _categories = cats.map((item) => TagUpsertVM.fromEntity(category: item)).toList();
//     notifyListUpdated();
//   }

//   void initSelectedCats(List<String> catIds) => _selectedCats = _categories
//       .where((cat) => cat.isSelected.value = catIds.contains(cat.vmFormController.id))
//       .toList();

//   TagUpsertVM newCategory() {
//     _viewStates.isItNew = true;
//     final cat = TagUpsertVM(userId: userId);
//     addListenersToVm(cat);
//     return cat;
//   }

//   void addListenersToVm(TagUpsertVM vm) {
//     vm.vmFormController.isModified.addListener(() => monitorModifications(vm.vmFormController));
//     vm.vmFormController.canUpsert.addListener(() => monitorModifications(vm.vmFormController));
//   }

//   void removeListenersFromVm(TagUpsertVM vm) {
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

//   void addToCategories(TagEntity category) {
//     _categories.add(TagUpsertVM.fromEntity(category: category));
//     notifyListUpdated();
//   }

//   void removeFromCategories(TagUpsertVM category) {
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

//   void selectedCatsChanged(TagUpsertVM cat, bool isSelected) {
//     isSelected ? selectedCats = [cat] : deSelectCat(cat);
//   }

//   late List<TagUpsertVM> _selectedCats = [];
//   List<TagUpsertVM> get selectedCats => _selectedCats;
//   set selectedCats(List<TagUpsertVM> cats) {
//     for (final cat in cats) {
//       selectCat(cat.vmFormController.id!);
//     }
//     _selectedCats.addAll(cats);
//     notifyListUpdated();
//   }

//   void deSelectCat(TagUpsertVM cat) {
//     deselectCat(cat.vmFormController.id!);
//     _selectedCats.remove(cat);
//     notifyListUpdated();
//   }
// }
