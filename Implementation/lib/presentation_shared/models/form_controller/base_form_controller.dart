import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/form_controller/field_changes_tracker.dart';

/// A base controller class for managing form states, tracking changes to an entity's fields,
/// and notifying listeners (e.g., UI) when values change.
///
/// Designed to be extended for specific entity types.
/// Provides mechanisms for:
/// - Storing original values for change detection
/// - Tracking modifications on individual fields
/// - Resetting form state
/// - Notifying listeners on state changes
/// - Accessing common entity fields such as `id`, `createdAt`, and `updatedAt`
abstract class BaseFormController<Entity extends BaseEntityAbstraction> extends ChangeNotifier {
  /// Creates an instance of [BaseFormController].
  ///
  /// [userId] is the identifier of the user owning or editing the entity.
  /// Optionally accepts an [entity] to initialize the controller state.
  BaseFormController({
    required this.userId,
    Entity? entity,
  }) {
    initialize(entity);
  }

  /// The ID of the current user. Useful for associating data with a specific user.
  final String userId;

  /// Notifies whether any tracked field has been modified.
  ///
  /// Typically assigned in a ViewModel or BLoC layer to reactively observe modification state.
  final ValueNotifier<bool> isModified = ValueNotifier(false);
  final ValueNotifier<bool> canUpsert = ValueNotifier(false);

  /// Initializes the controller's internal state using the given [entity].
  ///
  /// Should be overridden by subclasses. Called during construction and when updating original values.
  @protected
  void initialize([Entity? entity]) {
    isModified.value = false;
    canUpsert.value = false;
    notifyListeners();
  }

  /// Holds the original values of tracked fields for change detection.
  ///
  /// Keys are field symbols (e.g., `#title`, `#id`), values are [FieldChangesTracker] instances
  /// that track persisted and current field values.
  @protected
  final Map<Symbol, FieldChangesTracker> originalValues = {};

  /// Returns the original value of the entity's `id`, if available.
  String? get id => getOriginalValue<String?>(#id);

  /// Adds or updates key-value pairs in the original values map.
  ///
  /// Used to set initial persisted values for change tracking on specific fields.
  void addToOriginalValues<T>(Symbol key, T value) {
    final existingItem = originalValues.containsKey(key);
    if (existingItem) {
      originalValues.update(key, (item) => item.persistNewValue(value));
    } else {
      originalValues.addAll({key: FieldChangesTracker<T>(persistedValue: value)});
    }
    canUpsert.value = isValid;
  }

  /// Calculates whether the given [field] has changed compared to the original value.
  ///
  /// Updates the modification state of the field and notifies the overall `isModified` flag.
  void processModification([Symbol? field, dynamic newValue]) {
    if (field != null) {
      final item = originalValues[field]!..isChanged(newValue);
      if (item.isModified && !isModified.value) {
        isModified.value = true;
      }
    }
    if (isModified.value) {
      isModified.value = originalValues.entries.any((item) => item.value.isModified);
    }

    final isModificationValid = isValid && isModified.value;
    if (canUpsert.value != isModificationValid) {
      canUpsert.value = isModificationValid;
    }
    notifyListeners();
  }

  /// Returns the current entity represented by the controller's fields.
  ///
  /// Must be implemented by subclasses to build the entity from current form values.
  Entity get toEntity;

  /// Resets the form state and notifies listeners that the form is no longer modified.
  ///
  /// Also triggers [shouldResetInputs] to indicate UI inputs should reset.
  void resetValues() {
    shouldResetInputs = !shouldResetInputs;
    isModified.value = false;
    canUpsert.value = false;
    notifyListeners();
  }

  late bool _shouldResetInputs = false;

  /// Flag indicating whether UI input fields should reset their controllers.
  ///
  /// Useful for widgets to conditionally clear or reinitialize their state.
  bool get shouldResetInputs => _shouldResetInputs;

  /// Sets the [shouldResetInputs] flag and notifies listeners to trigger UI rebuild.
  set shouldResetInputs(bool value) {
    _shouldResetInputs = value;
    notifyListeners();
  }

  /// Updates the original values from the current entity state ([toEntity]).
  ///
  /// Optionally updates the stored `id` if provided.
  /// Calls [initialize] to re-initialize internal state accordingly.
  void updateOriginalValues([String? id]) {
    initialize(toEntity);
    if (id != null) {
      addToOriginalValues<String>(#id, id);
    }
  }

  /// Retrieves the original persisted value of a field identified by [key].
  T getOriginalValue<T>(Symbol key) => originalValues[key]!.persistedValue as T;

  /// Returns the original `createdAt` timestamp if available, or `DateTime.now()` as fallback.
  DateTime get getCreatedAt =>
      originalValues[#createdAt]!.persistedValue as DateTime? ?? DateTime.now();

  /// Returns the original `updatedAt` timestamp if available and entity has an `id`.
  ///
  /// Returns null if the entity is new or has no persisted ID.
  DateTime? get getUpdatedAt {
    final id = getOriginalValue<String?>(#id);
    if (id == null) return null;
    return getOriginalValue<DateTime?>(#updatedAt);
  }

  /// Returns whether the form data is valid.
  ///
  /// Should be implemented in subclasses based on domain-specific validation logic.
  final bool isValid = false;
}
