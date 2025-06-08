import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';

/// Abstract base class for all view models handling form operations with
/// clean architecture principles. Manages form state, validation, and
/// business logic coordination between controllers and views.
///
/// Type Parameters:
///   [vmFormController] - Type of form controller managing input fields
///
/// Responsibilities:
///   1. Coordinates between form controller and button states
///   2. Tracks form modification state
///   3. Manages form locking/unlocking
///   4. Handles entity creation/update workflows
///   5. Provides lifecycle management for form components
abstract class BaseViewModel<Controller extends BaseFormController> with ChangeNotifier {
  /// Constructs a [BaseViewModel] and binds listeners to the form controller and button states.
  ///
  /// Listens to changes in the form controller and form button states,
  /// and calls [notifyListeners] to update the UI accordingly.
  ///
  /// Parameters:
  ///   [vmFormController] - Controller managing form fields and validation
  BaseViewModel({
    required Controller vmFormController,
  })  : _vmFormController = vmFormController,
        isLocked = ValueNotifier(true) {
    // Listen to form changes and propagate to UI
    _vmFormController.addListener(notifyListeners);
  }

  /// Internal reference to the form controller that manages form inputs and validation.
  late final Controller _vmFormController;

  /// Public getter for the form controller.
  /// Exposes form fields and validation state to the view.
  Controller get vmFormController => _vmFormController;

  /// Controls form editing lock state using a ValueNotifier.
  ///
  /// When true:
  ///   - Form fields are disabled
  ///   - Editing is prevented
  ///   - Form is in read-only mode
  ///
  /// When false:
  ///   - Form fields are enabled
  ///   - Editing is allowed
  final ValueNotifier<bool> isLocked;

  ValueNotifier<bool> isSelected = ValueNotifier(false);

  bool toggleSelection([bool? value]) {
    return isSelected.value = value ?? !isSelected.value;
  }

  /// Handles successful entity creation workflow:
  ///   1. Updates original values with new entity ID
  ///   2. Transitions button states to "created" mode
  ///   3. Marks form as editing existing entity
  ///
  /// Parameters:
  ///   [id] - ID of the newly created entity
  void handleEntityCreated(String id) {
    // Persist current values as new baseline
    vmFormController.updateOriginalValues(id);
    // Transition from "new" to "existing" entity mode
  }

  /// Handles successful entity update workflow:
  ///   1. Updates original values with current form values
  ///   2. Resets modification tracking
  void handleEntityUpdated() {
    // Persist current values as new baseline
    _vmFormController.updateOriginalValues();
  }

  /// Cleans up resources and listeners when the view model is disposed.
  ///
  /// Critical for preventing memory leaks and stale updates
  @override
  void dispose() {
    // Dispose lock state notifier
    isLocked.dispose();

    super.dispose();
  }
}
