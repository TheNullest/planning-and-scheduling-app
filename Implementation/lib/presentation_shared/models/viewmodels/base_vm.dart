import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/mixinn/list_item_state_mixin.dart';
import 'package:zamaan/presentation_shared/models/mixinn/original_values_tracker_mixin.dart';
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
abstract class BaseViewModel<Entity extends BaseEntityAbstraction> extends ChangeNotifier
    with OriginalValuesTrackerMixin, ListItemStateMixin {
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

  /// Initializes the controller's internal state using the given [entity].
  ///
  /// Should be overridden by subclasses. Called during construction and when updating original values.
  @protected
  @mustCallSuper
  @mustBeOverridden
  void initialize([Entity? entity]) {
    if (entity != null && entity.id.isNotEmpty) {
      // Populate original values from entity properties
      addToOriginalValues<String?>(#id, entity.id);
      addToOriginalValues<DateTime?>(#createdAt, entity.createdAt);
      addToOriginalValues<DateTime?>(#updatedAt, entity.updatedAt);
      addToOriginalValues<String>(#description, entity.description ?? '');
      markAsPersisted();
    } else {
      // Initialize with default values for a new entity
      addToOriginalValues<String?>(#id, uuidGenerator);
      addToOriginalValues<DateTime?>(#createdAt, DateTime.now());
      addToOriginalValues<DateTime?>(#updatedAt, null);
      addToOriginalValues<String>(#description, '');
    }
    addToOriginalValues<String>(#userId, userId);
    addToOriginalValues<bool>(#isSoftRemoved, false);
    _description = getOriginalSignleValue<String>(#description);
    canReset.value = false;
    canUpsert.value = false;
    _syncButtonStates();
    notifyListeners();
  }

  String _description = '';
  String get description => _description;
  set description(String value) {
    _description = value;
    processChanges(#description, value);
  }

  /// Returns the original value of the entity's `id`, if available.
  String? get id => getOriginalSignleValue<String?>(#id)!;

  @override
  void toggleSoftRemoved() {
    super.toggleSoftRemoved();
    processChanges(#isSoftRemoved, isSoftRemoved.value);
  }

  /// Returns the current entity represented by the controller's fields.
  ///
  /// Must be implemented by subclasses to build the entity from current form values.
  Entity get toEntity;

  /// Resets the form state and notifies listeners that the form is no longer modified.
  ///
  /// Also triggers [shouldResetInputs] to indicate UI inputs should reset.
  @override
  @mustBeOverridden
  @mustCallSuper
  void resetValues() {
    _description = getOriginalSignleValue<String>(#description);
    shouldResetInputs = !shouldResetInputs;
    canReset.value = false;
    canUpsert.value = false;
    isSoftRemoved.value = false;
    _syncButtonStates();
    notifyListeners();
    super.resetValues();
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
  void _syncButtonStates() {
    // Update reset button state based on modification status
    if (viewStates.isResetButtonActive != canReset.value) {
      viewStates.isResetButtonActive = canReset.value;
    }

    // Update submit button state based on validity status
    if (viewStates.isSaveButtonActive != canUpsert.value) {
      viewStates.isSaveButtonActive = canUpsert.value;
    }
  }

  void onEntityCreated([Entity? entity]) {
    // Persist current values as new baseline
    initialize(entity);
  }

  /// Handles successful entity update workflow:
  ///   1. Updates original values with current form values
  ///   2. Resets modification tracking
  void onEntityUpdated([Entity? updatedEntity]) {
    initialize(updatedEntity);
  }

  @override
  void dispose() {
    viewStates.removeListener(notifyListeners);
    disposeListItemState();
    super.dispose();
  }
}
