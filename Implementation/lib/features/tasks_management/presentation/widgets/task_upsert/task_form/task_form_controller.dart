import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';

class TaskFormController extends BaseFormController<TaskEntity> {
  TaskFormController({
    required super.userId,
  })  : _title = '',
        _color = Colors.red,
        _iconCode = Icons.task.codePoint,
        _priority = Priority.medium,
        _status = TaskStatus.scheduled,
        _totalSpentTime = Duration.zero,
        _archived = false,
        _categoryIds = [],
        _fixedTagIds = [];

  TaskFormController.fromEntity({
    required TaskEntity task,
  })  : _title = task.title,
        _description = task.description,
        _iconCode = task.iconCode,
        _color = Color(task.colorCode),
        _archived = task.archived,
        _priority = task.priority,
        _status = task.taskStatus,
        _totalSpentTime = task.totalSpentTime,
        _categoryIds = List.from(task.categoryIds),
        _fixedTagIds = List.from(task.fixedTagIds),
        super(entity: task, userId: task.userId) {
    initialize(task);
  }
  @override
  void initialize([TaskEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<String>(#id, entity.id);
      addToOriginalValues<DateTime>(#createdAt, entity.createdAt);
      addToOriginalValues<DateTime?>(#updatedAt, entity.updatedAt);
      addToOriginalValues<Duration>(#totalSpentTime, entity.totalSpentTime);
      addToOriginalValues<String>(#userId, entity.userId);
      addToOriginalValues<String?>(#description, entity.description);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<Priority>(#priority, entity.priority);
      addToOriginalValues<TaskStatus>(#status, entity.taskStatus);
      addToOriginalValues<List<String>>(#fixedTagIds, List.from(entity.fixedTagIds));
      addToOriginalValues<List<String>>(#categoryIds, List.from(entity.categoryIds));
      addToOriginalValues<bool>(#archived, entity.archived);
      addToOriginalValues<int?>(#colorCode, entity.colorCode);
      addToOriginalValues<int?>(#iconCode, entity.iconCode);
    } else {
      addToOriginalValues<String?>(#id, null);
      addToOriginalValues<String>(#userId, userId);
      addToOriginalValues<DateTime>(#createdAt, DateTime.now());
      addToOriginalValues<DateTime?>(#updatedAt, null);
      addToOriginalValues<Duration>(#totalSpentTime, Duration.zero);
      addToOriginalValues<String?>(#description, null);
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<Priority>(#priority, Priority.medium);
      addToOriginalValues<TaskStatus>(#status, TaskStatus.scheduled);

      addToOriginalValues<List<String>>(#fixedTagIds, []);
      addToOriginalValues<List<String>>(#categoryIds, []);
      addToOriginalValues<bool>(#archived, false);
      addToOriginalValues<int>(#colorCode, Colors.deepPurple.toARGB32());
      addToOriginalValues<int>(#iconCode, Icons.check.codePoint);
    }
    super.initialize();
  }

  final Duration _totalSpentTime;
  Duration? get totalSpentTime => _totalSpentTime;

  late String _title;
  String get title => _title;
  set title(String value) {
    _title = value;
    processModification(#title, value);
  }

  String? _description;
  String? get description => _description;
  set description(String? value) {
    _description = value;
    processModification(#description, value);
  }

  late Priority _priority;
  Priority get priority => _priority;
  set priority(Priority value) {
    _priority = value;
    processModification(#priority, value);
  }

  late List<String> _categoryIds;
  List<String> get categoryIds => _categoryIds;

  void selectCat(String catId) {
    _categoryIds.add(catId);
    processModification(#categoryIds, _categoryIds);
  }

  void deselectCat(String catId) {
    _categoryIds.remove(catId);
    processModification(#categoryIds, _categoryIds);
  }

  void clearCategoryIds() {
    _categoryIds.clear();
    processModification(#categoryIds, _categoryIds);
  }

  late List<String> _fixedTagIds;
  List<String> get fixedTagIds => _fixedTagIds;
  void addFixedTagId(String value) {
    _fixedTagIds.add(value);
    processModification(#fixedTagIds, _fixedTagIds);
  }

  void selectTag(String id) {
    _fixedTagIds.add(id);
    processModification(#fixedTagIds, _fixedTagIds);
  }

  void deselectTag(String id) {
    _fixedTagIds.remove(id);
    processModification(#fixedTagIds, _fixedTagIds);
  }

  late TaskStatus _status;
  TaskStatus get status => _status;
  set status(TaskStatus value) {
    _status = value;
    processModification(#status, value);
  }

  late int _iconCode;
  int get iconCode => _iconCode;
  set iconCode(int value) {
    _iconCode = value;
    processModification(#iconCode, value);
  }

  IconData get icon => IconData(_iconCode, fontFamily: 'MaterialIcons');
  set icon(IconData value) {
    iconCode = value.codePoint;
  }

  late Color _color;
  Color get color => _color;
  set color(Color value) {
    _color = value;
    processModification(#colorCode, value.toARGB32());
  }

  late bool _archived;
  bool get archived => _archived;
  set archived(bool value) {
    _archived = value;
    processModification(#archived, value);
  }

  @override
  TaskEntity get toEntity => TaskEntity(
        id: getOriginalValue<String?>(#id),
        userId: getOriginalValue<String>(#userId),
        createdAt: getCreatedAt,
        updatedAt: getUpdatedAt,
        totalSpentTime: getOriginalValue<Duration?>(#totalSpentTime) ?? Duration.zero,
        description: _description ?? '',
        priority: _priority,
        title: _title,
        taskStatus: _status,
        archived: _archived,
        categoryIds: categoryIds,
        fixedTagIds: fixedTagIds,
        colorCode: _color.toARGB32(),
        iconCode: _iconCode,
      );

  // Validation
  @override
  bool get isValid {
    final title = _title.trim().isNotEmpty;
    const description = true;
    return title && description;
  }

  @override
  void resetValues() {
    _title = getOriginalValue<String>(#title);
    _description = getOriginalValue<String?>(#description);

    _categoryIds = List.from(getOriginalValue<List<String>>(#categoryIds));
    _fixedTagIds = List.from(getOriginalValue<List<String>>(#fixedTagIds));

    _priority = getOriginalValue<Priority>(#priority);
    _status = getOriginalValue<TaskStatus>(#status);

    color = Color(getOriginalValue<int>(#colorCode));
    _iconCode = getOriginalValue<int>(#iconCode);
    _archived = getOriginalValue<bool>(#archived);

    super.resetValues();
  }
}
