import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:zamaan/presentation_shared/models/states/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

abstract class BaseVMsManager<ViewModel extends BaseViewModel, Entity> with ChangeNotifier {
  /// Creates a manager for subtask view models
  ///
  /// Parameters:
  ///   [userId] - ID of the current user
  BaseVMsManager({
    required this.userId,
    required this.viewStates,
  });
  final UpsertViewStates viewStates;

  late final String userId; // Current user ID

  /// Currently active subtask being edited
  ViewModel? currentVM;

  final List<ViewModel> _viewModelsList = [];

  /// Read-only access to the list of subtask view models
  List<ViewModel> get viewModelsList => _viewModelsList;

  @protected
  set viewModelsList(List<ViewModel> vms) {
    _viewModelsList
      ..clear()
      ..addAll(vms);
  }

  void intiViewModelsList([List<Entity>? entities]) {
    // Trigger list update notification
    _viewModelsListIsUpdated = !_viewModelsListIsUpdated;
    notifyListeners();
  }

  late bool _viewModelsListIsUpdated = false;

  /// Indicates whether the subtask list has changed (used to trigger UI updates)
  bool get viewModelsListIsUpdated => _viewModelsListIsUpdated;

  /// Adds a new subtask view model to the list
  @mustBeOverridden
  @mustCallSuper
  void addNewToViewModelsList() {
    // Trigger list update notification
    _viewModelsListIsUpdated = !_viewModelsListIsUpdated;

    // Disable add button during editing
    isAddButtonActive = false;
    viewStates.isItNew = true;
  }

  /// Removes a subtask view model from the list
  ///
  /// Parameters:
  ///   [viewModel] - The view model to remove
  void removeFromViewModelsList(ViewModel viewModel) {
    _viewModelsList.remove(viewModel);

    // Trigger list update notification
    _viewModelsListIsUpdated = !_viewModelsListIsUpdated;

    // Clear current subtask selection
    currentViewModelFormClosed();
    notifyListeners();
  }

  //---------------------------
  // Add Button State Management
  //---------------------------

  late bool _isAddButtonActive = true;

  /// Indicates whether the "Add Subtask" button should be enabled
  bool get isAddButtonActive => _isAddButtonActive;

  set isAddButtonActive(bool value) {
    _isAddButtonActive = value;
    notifyListeners();
  }

  //-----------------------------
  // Current Subtask Management
  //-----------------------------

  /// Sets a subtask as the current active item for editing
  ///
  /// Parameters:
  ///   [viewModel] - The view model to set as current
  void currentViewModelChanged(ViewModel viewModel) {
    // Clear previous current subtask
    currentViewModelFormClosed();

    // Set new current subtask and unlock for editing
    currentVM = viewModel;
    currentVM!.isLocked.value = false;

    // Monitor form modification state for button activation
    currentVM!.vmFormController.isModified.addListener(monitorModifications);

    // Monitor form validity state for submission
    currentVM!.vmFormController.canUpsert.addListener(monitorModifications);

    // Listen for form modifications
    currentVM!.vmFormController.isModified.addListener(() {
      isAddButtonActive = !currentVM!.vmFormController.isModified.value;
    });
  }

  /// Clears the current subtask selection and resets form states
  void currentViewModelFormClosed() {
    if (currentVM != null) {
      if (!viewStates.isItNew) {
        // Reset form values for existing subtasks
        currentVM!.vmFormController.resetValues();
        currentVM!.isLocked.value = true;
      }
      if (currentVM!.vmFormController.hasListeners) {
        currentVM!.vmFormController
          ..removeListener(notifyListeners)
          ..canUpsert.removeListener(monitorModifications)
          ..dispose();
      } else {
        // Handle cancellation of new subtask creation
        _handleNewEntityCancelation();
      }
      currentVM!.vmFormController.isModified.removeListener(notifyListeners);
      currentVM!.vmFormController.canUpsert.removeListener(notifyListeners);
    }

    // Clear current reference and enable add button
    currentVM = null;
    isAddButtonActive = true;
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
  void monitorModifications() {
    // Update reset button state based on modification status
    if (viewStates.isResetButtonActive != currentVM!.vmFormController.isModified.value) {
      viewStates.isResetButtonActive = currentVM!.vmFormController.isModified.value;
    }

    // Update submit button state based on validity status
    if (viewStates.isSaveButtonActive != currentVM!.vmFormController.canUpsert.value) {
      viewStates.isSaveButtonActive = currentVM!.vmFormController.canUpsert.value;
    }
  }

  /// Cancels the creation of a new subtask if it hasn't been saved
  ///
  /// Removes the temporary unsaved subtask from the list when the user
  /// cancels the creation process before saving.
  void _handleNewEntityCancelation() {
    viewStates.isItNew = false;
    if (_viewModelsList.isNotEmpty) {
      final vm = _viewModelsList.last;

      // Check if it's an unsaved new subtask (no ID assigned)
      if (vm.vmFormController.id == null || vm.vmFormController.id!.isEmpty) {
        removeFromViewModelsList(vm);
      }
    }
  }

  //--------------------------
  // SubTask Event Handlers
  //--------------------------

  /// Handles successful creation of a subtask
  ///
  /// Parameters:
  ///   [id] - The ID of the newly created subtask
  void handleEntityCreated(String id) {
    currentVM!.handleEntityCreated(id);
    isAddButtonActive = true;
    viewStates.isItNew = false;
  }

  /// Handles successful update of a subtask
  void handleEntityUpdated() {
    currentVM!.handleEntityUpdated();
    isAddButtonActive = true;
  }

  /// Handles deletion of the current subtask
  void handleEntityDeleted() {
    removeFromViewModelsList(currentVM!);
    isAddButtonActive = true;
  }

  /// Clears all subtask view models from the list
  void clear() => _viewModelsList.clear();

  @override
  void dispose() {
    // Clean up all listeners
    if (currentVM != null && currentVM!.vmFormController.hasListeners) {
      currentVM!.vmFormController
        ..removeListener(notifyListeners)
        ..canUpsert.removeListener(monitorModifications)
        ..dispose();
    }

    for (final vm in _viewModelsList) {
      vm.removeListener(notifyListeners);
    }

    super.dispose();
  }
}
