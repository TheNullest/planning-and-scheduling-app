import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

abstract class BaseVmsManager<Entity extends BaseEntityAbstraction, ViewModel extends BaseViewModel>
    with ChangeNotifier {
  BaseVmsManager({
    required this.userId,
    void Function(String)? selectItem,
    void Function(String)? deselectItem,
  })  : _deselectItem = (deselectItem ?? (_) {}),
        _selectItem = (selectItem ?? (_) {});

  final void Function(String id) _selectItem;
  final void Function(String id) _deselectItem;

  final String userId;

  ViewModel toViewModel(Entity entity);

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

  void initItems(List<Entity> entities) {
    _items
      ..clear()
      ..addAll(entities.map(toViewModel));
    notifyListUpdated();
  }

  void initSelectedItems(List<String> itemIds) => _selectedItems =
      _items.where((item) => item.isSelected.value = itemIds.contains(item.id)).toList();

  @mustBeOverridden
  ViewModel newItem([ViewModel? item]) => item!;

  void addNewPersistedItem(Entity entity) {
    items.add(toViewModel(entity));
    notifyListUpdated();
  }

  void removeFromItems(String id) {
    _items.removeWhere((item) => item.id == id);
    notifyListUpdated();
  }

  void itemIsUpdated(String id) {
    _listUpdated = !_listUpdated;
    _items.firstWhere((item) => item.id == id).handleEntityUpdated();
    notifyListeners();
  }

  void selectedItemsChanged(ViewModel item, bool isSelected) {
    isSelected ? selectedItems = [item] : deSelectCat(item);
  }

  late List<ViewModel> _selectedItems = [];
  List<ViewModel> get selectedItems => _selectedItems;
  set selectedItems(List<ViewModel> items) {
    for (final cat in items) {
      _selectItem(cat.id!);
    }
    _selectedItems.addAll(items);
    notifyListUpdated();
  }

  void deSelectCat(ViewModel item) {
    _deselectItem(item.id!);
    _selectedItems.remove(item);
    notifyListUpdated();
  }
}
