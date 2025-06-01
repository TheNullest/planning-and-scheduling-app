import 'package:flutter/material.dart';

class SubTaskUpsertFormStates with ChangeNotifier {
  SubTaskUpsertFormStates() : _isNew = true;

  SubTaskUpsertFormStates.fromExisting() : _isNew = false;

  late bool _isNew;
  bool get isNew => _isNew;
  set isNew(bool value) {
    _isNew = value;
    notifyListeners();
  }

  // Upsert button states
  IconData get upsertButtonIcon => _isNew ? Icons.check : Icons.save;

  String get upsertButtonTitle => _isNew ? 'Create' : 'Update';

  late bool _isUpsertButtonActive = false;
  bool get isUpsertButtonActive => _isUpsertButtonActive;
  set isUpsertButtonActive(bool value) {
    _isUpsertButtonActive = value;
    notifyListeners();
  }

  // Reset button states
  final IconData resetButtonIcon = Icons.refresh;
  final String resetButtonTitle = 'Reset values';

  late bool _isResetButtonActive = false;
  bool get isResetButtonActive => _isResetButtonActive;
  set isResetButtonActive(bool value) {
    _isResetButtonActive = value;
    notifyListeners();
  }

  // Cancel button states
  final IconData cancelButtonIcon = Icons.cancel;
  final String cancelButtonTitle = 'Cancel';

  // Delete button states
  final IconData deleteButtonIcon = Icons.delete;
  final String deleteButtonTitle = 'Delete';

   bool get isDeleteButtonActive => !isNew;

  void handleTaskCreated() {
    isNew = false;
    isUpsertButtonActive = false;
    isResetButtonActive = false;
    notifyListeners();
  }
}
