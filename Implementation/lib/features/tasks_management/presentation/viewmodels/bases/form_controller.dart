import 'package:flutter/material.dart';

abstract class FormController<Entity> extends ChangeNotifier {
  FormController({
    required this.isModified,
    required this.userId,
    Entity? entity,
  }) {
    initialize(entity);
  }

  final String userId;
  final void Function(bool isModified) isModified;

  @protected
  void initialize([Entity? entity]);

  @protected
  final Map<Symbol, dynamic> originalValues = {};

  String? get id => originalValues[#id] as String?;

  void addToOriginalValues(Map<Symbol, dynamic> values) {
    originalValues.addAll(values);
  }

  Entity get toEntity;

  bool isChanged(Symbol field, dynamic currentValue) {
    return originalValues[field] != currentValue;
  }

  void resetValues() {
    resetTextController = true;
  }

  late bool _resetTextController = false;
  bool get resetTextController => _resetTextController;
  set resetTextController(bool value) {
    _resetTextController = value;
    notifyListeners();
  }

  void updateOriginalValues([String? id]) {
    initialize(toEntity);
    if (id != null) {
      addToOriginalValues({#id: id});
    }
  }

  bool get isValid;
}
