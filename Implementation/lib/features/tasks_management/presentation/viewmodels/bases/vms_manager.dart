import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';
import 'package:zamaan/presentation_shared/models/states/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

abstract class BaseVmsManager<Entity extends BaseEntityAbstraction, ViewModel extends BaseViewModel>
    with ChangeNotifier {
  BaseVmsManager({
    required this.userId,
    required this.selectItem,
    required this.deselectItem,
    required this.title,
  }) {
    _viewStates.addListener(notifyListeners);
  }

  final void Function(String id) selectItem;
  final void Function(String id) deselectItem;

  final String userId;

  final String title;

  late final _viewStates =
      UpsertViewStates(insertTitle: 'Create New $title', updateTitle: 'Update The $title');
  UpsertViewStates get viewStates => _viewStates;

  final List<ViewModel> _items = [];
  List<ViewModel> get items => _items;
  @protected
  set items(List<ViewModel> values) => _items
    ..clear()
    ..addAll(values);

  late bool _listUpdated = true;
  bool get listUpdated => _listUpdated;
  void notifyListUpdated() {
    _listUpdated = !_listUpdated;
    notifyListeners();
  }

  void initItems(List<Entity> entities);

  void initSelectedItems(List<String> itemIds) => _selectedItems = _items
      .where((item) => item.isSelected.value = itemIds.contains(item.vmFormController.id))
      .toList();

  @mustBeOverridden
  ViewModel newItem([ViewModel? item]) {
    _viewStates.isItNew = true;
    addListenersToVm(item!);
    return item;
  }

  void addListenersToVm(ViewModel item) {
    item.vmFormController.isModified.addListener(() => monitorModifications(item.vmFormController));
    item.vmFormController.canUpsert.addListener(() => monitorModifications(item.vmFormController));
  }

  void removeListenersFromVm(ViewModel vm) {
    vm.vmFormController.isModified.removeListener(() => monitorModifications(vm.vmFormController));
    vm.vmFormController.canUpsert.removeListener(() => monitorModifications(vm.vmFormController));
  }

  /// Synchronizes form modification state with button activation states.
  ///
  /// This method is automatically called when:
  ///   - Form fields are modified (dirty state changes)
  ///   - Form validation state changes (valid/invalid)
  ///
  /// It ensures:
  ///   1. Reset button is active only when form has modifications
  ///   2. Submit button is active only when form is valid
  void monitorModifications(BaseFormController fromController) {
    // Update reset button state based on modification status
    if (viewStates.isResetButtonActive != fromController.isModified.value) {
      viewStates.isResetButtonActive = fromController.isModified.value;
    }

    // Update submit button state based on validity status
    if (viewStates.isSaveButtonActive != fromController.canUpsert.value) {
      viewStates.isSaveButtonActive = fromController.canUpsert.value;
    }
  }

  @mustBeOverridden
  void addToItems(Entity entity) {
    notifyListUpdated();
  }

  void removeFromItems(ViewModel vm) {
    if (_items.contains(vm)) {
      _items.remove(vm);
    }
    notifyListUpdated();
  }

  void itemIsUpdated(String id) {
    _listUpdated = !_listUpdated;
    _items.firstWhere((item) => item.vmFormController.id == id).handleEntityUpdated();
    notifyListeners();
  }

  void selectedItemsChanged(ViewModel item, bool isSelected) {
    isSelected ? selectedItems = [item] : deSelectCat(item);
  }

  late List<ViewModel> _selectedItems = [];
  List<ViewModel> get selectedItems => _selectedItems;
  set selectedItems(List<ViewModel> items) {
    for (final cat in items) {
      selectItem(cat.vmFormController.id!);
    }
    _selectedItems.addAll(items);
    notifyListUpdated();
  }

  void deSelectCat(ViewModel item) {
    deselectItem(item.vmFormController.id!);
    _selectedItems.remove(item);
    notifyListUpdated();
  }
}
