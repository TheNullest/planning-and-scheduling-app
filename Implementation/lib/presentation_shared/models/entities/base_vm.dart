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
  bool _hasChages = false;
  bool get hasChanges => _hasChages;
  @protected
  set hasChanges(bool value) {
    _hasChages = value;
    notifyListeners();
  }

  void notifyChanges(bool isChanged) {
    _hasChages = isChanged && isValid;
  }

  void reset() {
    hasChanges = false;
    notifyListeners();
  }

  bool get isValid;

  // Buttons
  String get actionButtonText => isItNew ? 'Create' : 'Update';
  IconData get actionButtonIcon => isItNew ? Icons.check : Icons.save;
}
