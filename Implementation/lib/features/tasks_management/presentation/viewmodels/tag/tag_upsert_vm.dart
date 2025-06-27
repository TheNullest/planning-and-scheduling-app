import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class TagUpsertVM extends BaseViewModel<TagEntity> {
  TagUpsertVM({
    required super.userId,
  }) : super(viewModelTitle: 'Tag');

  TagUpsertVM.fromEntity({
    required super.entity,
  }) : super(userId: entity!.userId, viewModelTitle: 'Tag');

  @override
  void initialize([TagEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<String?>(#taskId, entity.taskId);
      addToOriginalValues<bool>(#isRelatedToTask, entity.taskId != null);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<int>(#colorCode, entity.colorCode);
      addToOriginalValues<int>(#iconCode, entity.iconCode);
    } else {
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<String?>(#taskId, null);
      addToOriginalValues<bool>(#isRelatedToTask, false);
      addToOriginalValues<int>(#colorCode, Colors.lightBlue.toARGB32());
      addToOriginalValues<int>(#iconCode, Icons.schedule.codePoint);
    }
    _taskId = getOriginalValue<String?>(#taskId);
    _title = getOriginalValue<String>(#title);
    _icon = IconData(getOriginalValue<int>(#iconCode), fontFamily: 'MaterialIcons');
    _color = Color(getOriginalValue<int>(#colorCode));
    super.initialize(entity);
  }

  String? _taskId;
  String? get taskId => _taskId;
  set taskId(String? value) {
    _taskId = value;
    processModification(#taskId, value);
  }

  bool get isRelatedToTask => _taskId != null;

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
  TagEntity get toEntity => TagEntity(
        id: getOriginalValue<String?>(#id),
        taskId: taskId,
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
    _taskId = getOriginalValue<String?>(#taskId);
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
