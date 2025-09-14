import 'package:flutter/foundation.dart';

mixin ListItemStateMixin {
  /// Indicates if this item has not been persisted yet (e.g., newly created).
  final ValueNotifier<bool> isNewItem = ValueNotifier(true);

  final ValueNotifier<bool> isModified = ValueNotifier(false);

  /// Indicates if this item has been soft-removed (hidden but not deleted).
  final ValueNotifier<bool> isSoftRemoved = ValueNotifier(false);

  /// Indicates if this item is currently selected (e.g., for editing).
  final ValueNotifier<bool?> isSelected = ValueNotifier(false);

  /// Mark the item as persisted.
  void markAsPersisted() => isNewItem.value = false;

  void markAsModified() => isModified.value = true;

  /// Soft-remove the item.
  void markAsSoftRemoved() => isSoftRemoved.value = true;

  /// Restore the item if soft-removed.
  void unmarkAsSoftRemoved() => isSoftRemoved.value = false;

  /// Toggle the soft-removed state.
  void toggleSoftRemoved() => isSoftRemoved.value = !isSoftRemoved.value;

  /// Mark the item as selected.
  void markAsSelected() => isSelected.value = true;

  /// Unmark the item as selected.
  void markAsDeselected() => isSelected.value = false;

  /// Toggle the selected state.
  bool toggleSelection() => isSelected.value = !isSelected.value!;

  /// Calculate the selection state based on the selection state of the sub items.
  void calculateSelectionState(){}

  /// Reset all flags.
  void resetState() {
    isNewItem.value = false;
    isSoftRemoved.value = false;
    isSelected.value = false;
  }

  /// Dispose notifiers when the object is destroyed.
  void disposeListItemState() {
    isNewItem.dispose();
    isSoftRemoved.dispose();
    isSelected.dispose();
  }
}
