import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/mixinn/soft_remove_mixin.dart';
import 'package:zamaan/presentation_shared/models/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

/// Abstract base class for managing ViewModels that correspond to Entities.
/// Provides CRUD operations, selection management, and state tracking.
///
/// Type Parameters:
/// - Entity: The domain entity type that extends BaseEntityAbstraction
/// - ViewModel: The view model type that extends BaseViewModel
abstract class BaseVmsManager<Entity extends BaseEntityAbstraction, ViewModel extends BaseViewModel>
    with ChangeNotifier, SoftRemovableMixin<ViewModel> {
  // Mixin for observable pattern

  /// Constructor for BaseVmsManager
  ///
  /// Parameters:
  /// - userId: Identifier for the current user
  /// - selectItem: Optional callback when an item is selected
  /// - deselectItem: Optional callback when an item is deselected
  BaseVmsManager({
    required this.userId,
    void Function(String)? selectItem,
    void Function(String)? deselectItem,
  })  : _deselectItem = (deselectItem ?? (_) {}), // Default to empty function if null
        _selectItem = (selectItem ?? (_) {}); // Default to empty function if null

  // Callbacks for selection events (with default empty implementations)
  final void Function(String id) _selectItem;
  final void Function(String id) _deselectItem;

  /// Manages the UI state for create/update operations
  late final UpsertViewStates viewStates = UpsertViewStates(insertTitle: '', updateTitle: '')
    ..addListener(notifyListeners); // Notify when view state changes

  /// Tracks whether reset operation is currently allowed
  final ValueNotifier<bool> canReset = ValueNotifier(false);

  /// Tracks whether save/update operation is currently allowed
  final ValueNotifier<bool> canUpsert = ValueNotifier(false);

  /// Processes changes to items and updates button states accordingly.
  /// This method must be called by subclasses using super.processChanges()
  @mustCallSuper
  void processChanges() {
    // Check if any items are marked for soft removal
    canReset.value = _items.any((item) => item.isSoftRemoved.value) || false;

    // Check if upsert is allowed (items exist and all are marked for removal)
    canUpsert.value = _items.isNotEmpty && (getSoftRemovedItems.length == _items.length);

    syncButtonStates(); // Update UI button states
    notifyListUpdated(); // Notify listeners of state changes
  }

  /// Synchronizes the button states between the manager and view states
  void syncButtonStates() {
    viewStates.isResetButtonActive = canReset.value;
    viewStates.isSaveButtonActive = canUpsert.value;
  }

  final String userId; // Identifier for the current user

  /// Converts an Entity to a ViewModel - must be implemented by subclasses
  ViewModel toViewModel(Entity entity);

  // Internal storage for items
  final List<ViewModel> _items = [];

  /// Gets a read-only list of persisted items
  List<ViewModel> get persistedItems => _items;

  /// Protected setter for updating the persisted items list
  @protected
  set persistedItems(List<ViewModel> values) => _items
    ..clear() // Clear existing items
    ..addAll(values); // Add new items

  void addNewPersistedItem(Entity entity) {
    _items.add(toViewModel(entity)..markAsPersisted());
    notifyListUpdated();
  }

  void removePersistedItem(ViewModel item) {
    _items.remove(item);
    notifyListUpdated();
  }

  // Tracks if the list has been updated (used for UI refresh)
  late bool _listUpdated = true;

  /// Indicates whether the list has been updated
  bool get isListUpdated => _listUpdated;

  void notifyListUpdated() {
    _listUpdated = !_listUpdated; // Toggle update flag
    notifyListeners();
  }

  /// Initializes the manager with a list of entities
  ///
  /// Parameters:
  /// - entities: List of entities to convert to view models
  void initItems(List<Entity> entities) {
    _items
      ..clear() // Clear existing items
      // Convert entities to view models and add change listeners
      ..addAll(entities
          .map((item) => toViewModel(item)..isSoftRemoved.addListener(() => processChanges())));

    _selectedItems.clear(); // Clear any previous selections

    processChanges(); // Update button states
  }

  /// Creates a new item - must be overridden by subclasses
  @mustBeOverridden
  ViewModel newItem([ViewModel? item]) => (_tempNewItemHolder = item)!;

  ViewModel? _tempNewItemHolder;

  /// Adds a new persisted entity to the list
  void onEntityCreated(Entity entity) {
    addNewPersistedItem(entity);
    _tempNewItemHolder?.onEntityCreated();
  }

// --------------- Selection Management --------------- //

  /// Initializes the selected items either by IDs or directly with items
  void initSelectedItems({List<String>? itemIds, List<ViewModel>? items}) {
    _selectedItems.clear();
    if (items != null) {
      _selectedItems.addAll(items);
    } else {
      // Select items based on provided IDs
      _selectedItems =
          _items.where((item) => item.isSelected.value = itemIds!.contains(item.id)).toList();
    }
    notifyListUpdated();
  }

  /// Handles changes to item selection state
  void selectedItemsChanged(ViewModel item, bool isSelected) {
    isSelected ? selectItem(item) : deselectItem(item);
  }

  // Internal storage for selected items
  late List<ViewModel> _selectedItems = [];

  /// Gets the currently selected items
  List<ViewModel> get selectedItems => List.unmodifiable(_selectedItems);

  /// Selects an item and notifies listeners
  void selectItem(ViewModel item) {
    if (item.id != null) {
      _selectItem(item.id!); // Call external selection callback
    }
    _selectedItems.add(item);
    notifyListUpdated();
  }

  /// Deselects an item and notifies listeners
  void deselectItem(ViewModel item) {
    if (item.id != null) {
      _deselectItem(item.id!); // Call external deselection callback
    }
    _selectedItems.remove(item);
    notifyListUpdated();
  }

  /// Deselects all currently selected items
  void deselectAll() {
    _selectedItems.clear();
    notifyListUpdated();
  }

// --------------- Soft Removal Management --------------- //

  /// Gets items that have been soft-removed (marked for deletion but not permanently removed)
  @override
  List<ViewModel> get getSoftRemovedItems =>
      _items.where((item) => item.isSoftRemoved.value).toList();

  /// Restores a soft-removed item by its ID
  @override
  void restoreSoftRemovedItem(String id) {
    getSoftRemovedItems.firstWhere((item) => item.id == id).unmarkAsSoftRemoved();
    notifyListUpdated();
  }

  /// Restores all soft-removed items
  @override
  void restoreAllSoftRemovedItems() {
    for (final item in getSoftRemovedItems) {
      item.unmarkAsSoftRemoved();
    }
  }

  /// Permanently removes all soft-removed items
  @override
  void clearSoftRemovedItems() {
    for (final item in getSoftRemovedItems) {
      _items.remove(item);
    }
    notifyListUpdated();
  }

// --------------- Update Management --------------- //

  /// Handles updates to an entity by finding and updating the corresponding view model
  void itemIsUpdated(Entity updatedEntity) {
    _listUpdated = !_listUpdated; // Toggle update flag
    _items.firstWhere((item) => item.id == updatedEntity.id).onEntityUpdated(updatedEntity);
    notifyListUpdated();
  }

// --------------- Validation --------------- //

  /// Validates if the current state is valid for operations
  /// Returns true if any selected item is invalid, false otherwise
  bool isValid() => _selectedItems.any((item) => !item.isValid) || false;
}
