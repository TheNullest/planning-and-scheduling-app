/// A utility class to track whether a specific field's value has changed
/// compared to its persisted (original) value.
class FieldChangesTracker<T> {
  FieldChangesTracker({
    required this.persistedValue,
  });

  /// The originally persisted value (from DB or previous state).
  final T persistedValue;

  /// Whether the field value is modified from its original state.
  bool _isModified = false;
  bool get isModified => _isModified;

  /// Updates the field tracker with a new value and returns whether it's changed.
  void isChanged(T newValue) {
    if (newValue is List) {
      _isModified = (persistedValue as List) != newValue;
    } else {
      _isModified = persistedValue != newValue;
    }
  }

  /// Returns a new tracker with updated persisted value.
  FieldChangesTracker<T> persistNewValue([T? newPersistedValue]) {
    return FieldChangesTracker<T>(
      persistedValue: newPersistedValue ?? persistedValue,
    );
  }
}
