mixin SoftRemovableMixin<item> {
  /// List of items that have been soft-removed (marked for deletion but not permanently removed).
  List<item> get getSoftRemovedItems;

  /// Restores a soft-removed item by its ID.
  void restoreSoftRemovedItem(String id);

  /// Restores all soft-removed items.
  void restoreAllSoftRemovedItems();

  /// Permanently removes all soft-removed items.
  void clearSoftRemovedItems();
}
