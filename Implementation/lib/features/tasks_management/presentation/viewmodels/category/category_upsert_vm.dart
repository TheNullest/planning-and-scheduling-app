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

    _title = getOriginalSignleValue<String>(#title);
    _icon = IconData(getOriginalSignleValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    _color = Color(getOriginalSignleValue<int>(#colorCode));
    super.initialize(entity);
  }

  late String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;

    processChanges(#title, value);
  }

  late IconData _icon;

  IconData get icon => _icon;
  set icon(IconData value) {
    _icon = value;
    processChanges(#iconCode, value.codePoint);
  }

  late Color _color;
  Color get color => _color;
  set color(Color value) {
    if (_color != value) {
      _color = value;
      processChanges(#colorCode, value.toARGB32());
    }
  }

  @override
  CategoryEntity get toEntity => CategoryEntity(
        id: getOriginalSignleValue<String?>(#id)!,
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
    _title = getOriginalSignleValue<String>(#title);
    _color = Color(getOriginalSignleValue<int>(#colorCode));
    _icon = IconData(getOriginalSignleValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    super.resetValues();
  }

  @override
  bool get isValid {
    final isTitleValid = _title.trim().isNotEmpty;
    final isDescriptionValid = description.trim().isNotEmpty;
    return isTitleValid && isDescriptionValid;
  }
}
