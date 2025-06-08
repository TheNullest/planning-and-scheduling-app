import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';

class CategoryFormController extends BaseFormController<CategoryEntity> {
  CategoryFormController({required super.userId});

  CategoryFormController.fromEntity({required CategoryEntity entity})
      : super(userId: entity.userId) {
    initialize(entity);
  }
  @override
  void initialize([CategoryEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<String?>(#id, entity.id);
      addToOriginalValues<String>(#userId, userId);
      addToOriginalValues<DateTime>(#createdAt, entity.createdAt);
      addToOriginalValues<DateTime?>(#updatedAt, entity.updatedAt);
      addToOriginalValues<String?>(#description, entity.description);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<int>(#colorCode, entity.colorCode);
      addToOriginalValues<int>(#iconCode, entity.iconCode);

      _title = entity.title;
      _description = entity.description;
      _icon = IconData(entity.iconCode, fontFamily: 'MaterialIcons');
      _color = Color(entity.colorCode);
    } else {
      // Clear original values and set defaults
      originalValues.clear();

      addToOriginalValues<String?>(#id, null);
      addToOriginalValues<String>(#userId, userId);
      addToOriginalValues<DateTime>(#createdAt, DateTime.now());
      addToOriginalValues<DateTime?>(#updatedAt, null);
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<String?>(#description, null);
      addToOriginalValues<int>(#colorCode, Colors.lightBlue.toARGB32());
      addToOriginalValues<int>(#iconCode, Icons.schedule.codePoint);

      _title = '';
      _description = '';
      _icon = Icons.category;
      _color = Colors.purple;
    }
    super.initialize();
  }

  late String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;

    processModification(#title, value);
  }

  String? _description;
  String? get description => _description;
  set description(String? value) {
    if (_description != value) {
      _description = value;

      processModification(#description, value);
    }
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
        description: _description,
        title: _title,
        colorCode: _color.toARGB32(),
        iconCode: _icon.codePoint,
        userId: userId,
      );

  @override
  void resetValues() {
    _title = getOriginalValue<String>(#title);
    _description = getOriginalValue<String?>(#description);
    _color = Color(getOriginalValue<int>(#colorCode));
    _icon = IconData(getOriginalValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    super.resetValues();
  }

  @override
  bool get isValid {
    final title = _title.trim().isNotEmpty;
    final description = _description?.trim().isNotEmpty ?? false;
    return title && description;
  }
}
