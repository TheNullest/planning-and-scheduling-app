import 'package:flutter/material.dart';

abstract class BaseViewModel<Entity> with ChangeNotifier {
  BaseViewModel();

  /// Can display the from controller or not?
  bool _isLocked = true;
  bool get isLocked => _isLocked;
  @protected
  set isLocked(bool value) {
    _isLocked = value;
    notifyListeners();
  }

  /// Updatable or Creatable ?
  bool _isItNew = true;
  bool get isItNew => _isItNew;
  @protected
  set isItNew(bool value) {
    _isItNew = value;
    notifyListeners();
  }

  /// The update button could be enabled or not
  bool _hasValidChages = false;
  bool get hasValidChanges => _hasValidChages;
  @protected
  set hasValidChanges(bool value) {
    _hasValidChages = value;
    notifyListeners();
  }

  void isModified(bool isChanged) {
    _hasValidChages = isChanged && isValid;
  }

  void reset() {
    hasValidChanges = false;
    notifyListeners();
  }

  bool get isValid;

  // Buttons
  String get actionButtonText => isItNew ? 'Create' : 'Update';
  IconData get actionButtonIcon => isItNew ? Icons.check : Icons.save;
}
