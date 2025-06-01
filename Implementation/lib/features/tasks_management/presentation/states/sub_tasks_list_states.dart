import 'package:flutter/foundation.dart' show ChangeNotifier;

class SubTasksListStates with ChangeNotifier {
  // SubTask add button states
  late bool _isAddButtonActive = true;
  bool get isAddButtonActive => _isAddButtonActive;
  set isAddButtonActive(bool value) {
    _isAddButtonActive = value;
    notifyListeners();
  }

  // List of sub-tasks states
  bool _isListUpdated = false;
  bool get isListUpdated => _isListUpdated;
  set isListUpdated(bool value) {
    _isListUpdated = value;
    notifyListeners();
  }
}
