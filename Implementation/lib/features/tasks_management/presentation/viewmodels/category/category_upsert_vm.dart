import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class CategoryUpsertVM extends BaseViewModel<CategoryEntity> {
  CategoryUpsertVM({
    required super.userId,
  }) : super(viewModelTitle: 'Category');

  CategoryUpsertVM.fromEntity({required super.entity})
      : super(userId: entity!.userId, viewModelTitle: 'Category');
  @override
  void initialize([CategoryEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<int>(#colorCode, entity.colorCode);
      addToOriginalValues<int>(#iconCode, entity.iconCode);
    } else {
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<int>(#colorCode, Colors.lightBlue.toARGB32());
      addToOriginalValues<int>(#iconCode, Icons.schedule.codePoint);
    }

    _title = getOriginalValue<String>(#title);
    _icon = IconData(getOriginalValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    _color = Color(getOriginalValue<int>(#colorCode));
    super.initialize(entity);
  }

  late String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;

    processModification(#title, value);
  }

  late IconData _icon;

  IconData get icon => _icon;
  set icon(IconData value) {
    _icon = value;
    processModification(#iconCode, value.codePoint);
  }

  late Color _color;
  Color get color => _color;
  set color(Color value) {
    if (_color != value) {
      _color = value;
      processModification(#colorCode, value.toARGB32());
    }
  }

  @override
  CategoryEntity get toEntity => CategoryEntity(
        id: getOriginalValue<String?>(#id),
        createdAt: getCreatedAt,
        updatedAt: getUpdatedAt,
        description: description.isNotEmpty ? description : null,
        title: _title,
        colorCode: _color.toARGB32(),
        iconCode: _icon.codePoint,
        userId: userId,
      );

  @override
  void resetValues() {
    _title = getOriginalValue<String>(#title);
    _color = Color(getOriginalValue<int>(#colorCode));
    _icon = IconData(getOriginalValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    super.resetValues();
  }

  @override
  bool get isValid {
    final isTitleValid = _title.trim().isNotEmpty;
    final isDescriptionValid = description.trim().isNotEmpty;
    return isTitleValid && isDescriptionValid;
  }
}
