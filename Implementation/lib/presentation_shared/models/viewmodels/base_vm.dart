import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/field_changes_tracker.dart';
import 'package:zamaan/presentation_shared/models/upsert_view_states.dart';

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
abstract class BaseViewModel<Entity extends BaseEntityAbstraction> extends ChangeNotifier {
  /// Creates an instance of [BaseViewModel].
  ///
  /// [userId] is the identifier of the user owning or editing the entity.
  /// Optionally accepts an [entity] to initialize the controller state.
  BaseViewModel({
    required this.userId,
    required String viewModelTitle,
    Entity? entity,
  }) : _viewModelTitle = viewModelTitle {
    initialize(entity);
  }

  /// The ID of the current user. Useful for associating data with a specific user.
  final String userId;

  final String _viewModelTitle;

  late final UpsertViewStates viewStates = UpsertViewStates(
      insertTitle: 'Create New $_viewModelTitle', updateTitle: 'Update The $_viewModelTitle')
    ..addListener(notifyListeners);

  /// Notifies whether any tracked field has been modified.
  ///
  /// Typically assigned in a ViewModel or BLoC layer to reactively observe modification state.
  final ValueNotifier<bool> isModified = ValueNotifier(false);
  final ValueNotifier<bool> canUpsert = ValueNotifier(false);

  ValueNotifier<bool> isSelected = ValueNotifier(false);

  bool toggleSelection([bool? value]) {
    return isSelected.value = value ?? !isSelected.value;
  }

  /// Initializes the controller's internal state using the given [entity].
  ///
  /// Should be overridden by subclasses. Called during construction and when updating original values.
  @protected
  @mustCallSuper
  @mustBeOverridden
  void initialize([Entity? entity]) {
    if (entity != null) {
      // Populate original values from entity properties
      addToOriginalValues<String?>(#id, entity.id);
      addToOriginalValues<DateTime?>(#createdAt, entity.createdAt);
      addToOriginalValues<DateTime?>(#updatedAt, entity.updatedAt);
      addToOriginalValues<String>(#description, entity.description ?? '');
    } else {
      // Initialize with default values for a new entity
      addToOriginalValues<String?>(#id, null);
      addToOriginalValues<DateTime?>(#createdAt, DateTime.now());
      addToOriginalValues<DateTime?>(#updatedAt, null);
      addToOriginalValues<String>(#description, '');
    }
    addToOriginalValues<String>(#userId, userId);
    _description = getOriginalValue<String>(#description);
    isModified.value = false;
    canUpsert.value = false;
    viewStates.isItNew = entity == null;
    syncButtonStates();
  }

  late String _description = '';
  String get description => _description;
  set description(String value) {
    _description = value;
    processModification(#description, value);
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
    syncButtonStates();
    notifyListeners();
  }

  /// Returns the current entity represented by the controller's fields.
  ///
  /// Must be implemented by subclasses to build the entity from current form values.
  Entity get toEntity;

  /// Resets the form state and notifies listeners that the form is no longer modified.
  ///
  /// Also triggers [shouldResetInputs] to indicate UI inputs should reset.
  @mustBeOverridden
  @mustCallSuper
  void resetValues() {
    _description = getOriginalValue<String>(#description);
    shouldResetInputs = !shouldResetInputs;
    isModified.value = false;
    canUpsert.value = false;
    syncButtonStates();
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

  /// Synchronizes form modification state with button activation states.
  ///
  /// This method is automatically called when:
  ///   - Form fields are modified (dirty state changes)
  ///   - Form validation state changes (valid/invalid)
  ///
  /// It ensures:
  ///   1. Reset button is active only when form has modifications
  ///   2. Submit button is active only when form is valid
  void syncButtonStates() {
    // Update reset button state based on modification status
    if (viewStates.isResetButtonActive != isModified.value) {
      viewStates.isResetButtonActive = isModified.value;
    }

    // Update submit button state based on validity status
    if (viewStates.isSaveButtonActive != canUpsert.value) {
      viewStates.isSaveButtonActive = canUpsert.value;
    }
  }

  void handleEntityCreated(String id) {
    // Persist current values as new baseline
    initialize(toEntity);
    addToOriginalValues<String>(#id, id);
  }

  /// Handles successful entity update workflow:
  ///   1. Updates original values with current form values
  ///   2. Resets modification tracking
  void handleEntityUpdated(Entity updatedEntity) {
    initialize(updatedEntity);
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
  @mustBeOverridden
  final isValid = false;
}
