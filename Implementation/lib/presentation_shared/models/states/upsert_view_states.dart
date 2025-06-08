import 'package:flutter/material.dart' show ChangeNotifier, IconData, Icons;
import 'package:flutter/material.dart';

/// Manages the state and presentation of form buttons for Create/Update (Upsert)
/// operations in entity management forms. Provides consistent button behavior
/// and appearance across create and edit modes.
///
/// Responsibilities:
/// 1. Manages button states (active/inactive)
/// 2. Provides dynamic button labels and icons
/// 3. Toggles between create and update modes
/// 4. Coordinates button visibility rules
/// 5. Handles state transitions after entity creation
class UpsertViewStates with ChangeNotifier {
  UpsertViewStates({required String insertTitle, required String updateTitle})
      : _insertTitle = insertTitle,
        _updateTitle = updateTitle;

  //------------------------
  // New/Existing Mode Flag
  //------------------------

  late bool _isItNew = false;

  /// Indicates whether the form is in "create new entity" mode (true)
  /// or "update existing entity" mode (false)
  bool get isItNew => _isItNew;

  /// Toggles between create and update modes and notifies listeners
  set isItNew(bool value) {
    if (_isItNew != value) {
      _isItNew = value;
      notifyListeners();
    }
  }

  final String _insertTitle;
  final String _updateTitle;

  String get widgetTitle => isItNew ? _insertTitle : _updateTitle;

  late bool _isSaveButtonActive = false;

  /// Indicates whether the upsert button should be enabled
  bool get isSaveButtonActive => _isSaveButtonActive;

  /// Sets the active state of the upsert button and notifies listeners
  set isSaveButtonActive(bool value) {
    if (_isSaveButtonActive != value) {
      _isSaveButtonActive = value;
      notifyListeners();
    }
  }

  //------------------------
  // Reset Button
  //------------------------

  /// Icon for the reset button (↻)
  final IconData resetButtonIcon = Icons.refresh;

  /// Label for the reset button
  final String resetButtonTitle = 'Reset values';

  late bool _isResetButtonActive = false;

  /// Indicates whether the reset button should be enabled
  bool get isResetButtonActive => _isResetButtonActive;

  /// Sets the active state of the reset button and notifies listeners
  set isResetButtonActive(bool value) {
    if (_isResetButtonActive != value) {
      _isResetButtonActive = value;
      notifyListeners();
    }
  }

  //------------------------
  // Cancel Button
  //------------------------

  /// Returns the appropriate icon for the cancel button:
  ///   - Create mode: Cancel icon (✖)
  ///   - Update mode: Back arrow (←)
  IconData get cancelButtonIcon => isItNew ? Icons.cancel : Icons.arrow_back;

  /// Returns the appropriate label for the cancel button:
  ///   - Create mode: "Cancel"
  ///   - Update mode: "Close"
  String get cancelButtonTitle => isItNew ? 'Cancel' : 'Close';

  //------------------------
  // Delete Button
  //------------------------

  /// Icon for the delete button (🗑️)
  final IconData deleteButtonIcon = Icons.delete;

  /// Label for the delete button
  final String deleteButtonTitle = 'Delete';

  /// Indicates whether the delete button should be visible and enabled:
  ///   - Enabled only in update mode (existing entities)
  bool get isDeleteButtonActive => !isItNew;

  //------------------------
  // State Transition Methods
  //------------------------

  /// Updates button states after successful entity creation:
  ///   1. Switches from create to update mode
  ///   2. Disables upsert button
  ///   3. Disables reset button
  void handleCreatedEntityState() {
    isItNew = false;
    isSaveButtonActive = false;
    isResetButtonActive = false;
  }
}
