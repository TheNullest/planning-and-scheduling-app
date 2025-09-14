import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/presentation_shared/models/field_changes_tracker.dart';

/// A mixin that provides original-value tracking, change detection,
/// and form state management capabilities for ViewModels.
///
/// Designed to decouple value-tracking logic from presentation or domain logic.
/// Handles:
/// - Storing original persisted values
/// - Detecting field modifications
/// - Resetting state
/// - Synchronizing modification-related flags (e.g., canReset, canUpsert)
mixin OriginalValuesTrackerMixin on ChangeNotifier {
  /// Holds tracked field values, mapped by field symbols.
  @protected
  final Map<Symbol, FieldChangesTracker> originalValues = {};

  /// Indicates whether the form has any modifiable fields.
  final ValueNotifier<bool> canReset = ValueNotifier(false);

  /// Indicates whether the form is valid and ready for upsert (create/update).
  final ValueNotifier<bool> canUpsert = ValueNotifier(false);

  /// Adds or updates a tracked value for a specific field.
  ///
  /// [key] is a symbol representing the field (e.g., `#title`).
  /// [value] is the initial persisted value of that field.
  void addToOriginalValues<T>(Symbol key, T value) {
    final existingItem = originalValues.containsKey(key);
    if (existingItem) {
      originalValues.update(key, (item) => item.persistNewValue(value));
    } else {
      originalValues[key] = FieldChangesTracker<T>(persistedValue: value);
    }
    _refreshModificationState();
  }

  void updateOriginalValue<T>(Symbol key, T updatedValue) {
    originalValues.remove(key);
    originalValues[key] = FieldChangesTracker<T>(persistedValue: updatedValue);
  }

  /// Returns the original persisted value associated with the [key].
  ///
  /// Creates a shallow copy of list-type values to prevent external mutation.
  T getOriginalSignleValue<T>(Symbol key) {
    final value = originalValues[key]!.persistedValue as T;
    if (value is List) return List<T>.from(value) as T;
    return value;
  }

  List<T> getOriginalListValue<T>(Symbol key) {
    return List<T>.from(originalValues[key]!.persistedValue as List<T>);
  }

  /// Processes a field change by comparing new and original values.
  ///
  /// Automatically updates modification state and form flags.
  void processChanges([Symbol? field, dynamic newValue, bool Function(dynamic)? isChanged]) {
    if (field != null) {
      final item = originalValues[field];
      if (item != null) {
        item.isChanged(newValue, isChanged);
      }
    }
    _refreshModificationState();
  }

  /// Refreshes state of [canReset] and [canUpsert] based on modifications and validation.
  @protected
  void _refreshModificationState() {
    final hasChanges = originalValues.values.any((e) => e.isModified);
    canReset.value = hasChanges;
    canUpsert.value = isValid && hasChanges;
    notifyListeners();
  }

  /// Resets all tracked fields back to their persisted values.
  ///
  /// This does **not** automatically notify UI unless overridden.
  @mustBeOverridden
  @mustCallSuper
  void resetValues() {
    canReset.value = false;
    canUpsert.value = false;
    notifyListeners();
  }

  /// Should be overridden by consumers to indicate domain-specific validity.
  @protected
  bool get isValid;

  /// Retrieves the original `createdAt` timestamp if available, or [DateTime.now] as fallback.
  DateTime get getCreatedAt =>
      originalValues[#createdAt]?.persistedValue as DateTime? ?? DateTime.now();

  /// Retrieves the original `updatedAt` timestamp if available.
  DateTime? get getUpdatedAt => originalValues[#updatedAt]?.persistedValue as DateTime?;

  /// Clears tracked data.
  ///
  /// Useful for hard resets or when reinitializing the VM with new entities.
  @mustCallSuper
  void clearOriginalValues() {
    originalValues.clear();
    canReset.value = false;
    canUpsert.value = false;
    notifyListeners();
  }
}
