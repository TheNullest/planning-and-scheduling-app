import 'package:flutter/material.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';

class TaskUpsertFormStates with ChangeNotifier {
  /// TODO[Implement]: Should provide 3 more buttons as cancel, delete and reset values for the form.

// Upsert button states
  TaskUpsertFormStates() {
    _actionButtonTitle = 'Create';
    _actionButtonIcon = Icons.check;
  }

  TaskUpsertFormStates.fromExisting() {
    _actionButtonTitle = 'Update';
    _actionButtonIcon = Icons.save;
  }

  late IconData _actionButtonIcon;
  IconData get actionButtonIcon => _actionButtonIcon;
  set actionButtonIcon(IconData value) {
    _actionButtonIcon = value;
    notifyListeners();
  }

  late String _actionButtonTitle;
  String get actionButtonTitle => _actionButtonTitle;
  set actionButtonTitle(String value) {
    _actionButtonTitle = value;
    notifyListeners();
  }

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

  // Back button states
  final IconData backButtonIcon = Icons.arrow_back;
  final String backButtonTitle = 'Back';

  // Delete button states
  final IconData deleteButtonIcon = Icons.delete;
  final String deleteButtonTitle = 'Delete';
}
