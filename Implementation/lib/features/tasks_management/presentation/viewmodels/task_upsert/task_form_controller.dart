import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/form_controller.dart';

class TaskFormController extends FormController<TaskEntity> {
  TaskFormController({
    required super.isModified,
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
    required super.isModified,
    required TaskEntity task,
  })  : _title = task.title,
        _description = task.description,
        _iconCode = task.iconCode,
        _color = Color(task.colorCode),
        _archived = task.archived,
        _priority = task.priority,
        _status = task.taskStatus,
        _totalSpentTime = task.totalSpentTime,
        _categoryIds = task.categoryIds,
        _fixedTagIds = task.fixedTagIds,
        super(entity: task, userId: task.userId) {
    initialize(task);
  }

  @override
  void initialize([TaskEntity? entity]) {
    if (entity != null) {
      originalValues
        ..clear()
        ..addAll({
          #id: entity.id,
          #createdAt: entity.createdAt,
          #updatedAt: entity.updatedAt,
          #totalSpentTime: entity.totalSpentTime,
          #userId: entity.userId,
          #description: entity.description,
          #title: entity.title,
          #priority: entity.priority,
          #status: entity.taskStatus,
          #fixedTagIds: entity.fixedTagIds,
          #categoryIds: entity.categoryIds,
          #archived: entity.archived,
          #colorCode: entity.colorCode,
          #iconCode: entity.iconCode,
        });
    } else {
      originalValues
        ..clear()
        ..addAll({
          #userId: userId,
        });
    }
  }

  final Duration _totalSpentTime;
  Duration? get totalSpentTime => _totalSpentTime;

  late String _title;
  String get title => _title;
  set title(String value) {
    _title = value;

    isModified(
      isChanged(#title, _title),
    );

    notifyListeners();
  }

  String? _description;
  String? get description => _description;
  set description(String? value) {
    if (_description != value) {
      _description = value;

      isModified(
        isChanged(#description, _description),
      );

      notifyListeners();
    }
  }

  late Priority _priority;
  Priority get priority => _priority;
  set priority(Priority value) {
    _priority = value;
    isModified(
      isChanged(#priority, _priority),
    );
    notifyListeners();
  }

  final List<String> _categoryIds;
  List<String> get categoryIds => List.unmodifiable(_categoryIds);
  void addCategoryId(String value) {
    _categoryIds.add(value);
    isModified(isChanged(#categoryIds, _categoryIds));
    notifyListeners();
  }

  void removeCategoryId(String value) {
    _categoryIds.remove(value);
    isModified(isChanged(#categoryIds, _categoryIds));
    notifyListeners();
  }

  void clearCategoryIds() {
    _categoryIds.clear();
    isModified(isChanged(#categoryIds, _categoryIds));
    notifyListeners();
  }

  final List<String> _fixedTagIds;
  List<String> get fixedTagIds => List.unmodifiable(_fixedTagIds);
  void addFixedTagId(String value) {
    _fixedTagIds.add(value);
    isModified(
      isChanged(#fixedTagIds, _fixedTagIds),
    );
    notifyListeners();
  }

  void removeFixedTagId(String value) {
    _fixedTagIds.remove(value);
    isModified(
      isChanged(#fixedTagIds, _fixedTagIds),
    );
    notifyListeners();
  }

  void clearFixedTagIds() {
    _fixedTagIds.clear();
    isModified(
      isChanged(#fixedTagIds, _fixedTagIds),
    );
    notifyListeners();
  }

  late TaskStatus _status;
  TaskStatus get status => _status;
  set status(TaskStatus value) {
    _status = value;
    isModified(
      isChanged(#status, _status),
    );
    notifyListeners();
  }

  late int _iconCode;
  int get iconCode => _iconCode;
  set iconCode(int value) {
    _iconCode = value;
    isModified(
      isChanged(#iconCode, _iconCode),
    );

    notifyListeners();
  }

  IconData get icon => IconData(_iconCode, fontFamily: 'MaterialIcons');
  set icon(IconData value) {
    iconCode = value.codePoint;
  }

  late Color _color;
  Color get color => _color;
  set color(Color value) {
    _color = value;
    isModified(
      isChanged(#colorCode, _color.toARGB32()),
    );
    notifyListeners();
  }

  late bool _archived;
  bool get archived => _archived;
  set archived(bool value) {
    _archived = value;
    isModified(
      isChanged(#archived, _archived),
    );
    notifyListeners();
  }

  @override
  TaskEntity get toEntity => TaskEntity(
        id: originalValues[#id] as String?,
        userId: originalValues[#userId] as String,
        createdAt: originalValues[#createdAt] as DateTime? ?? DateTime.now(),
        totalSpentTime: originalValues[#totalSpentTime] as Duration? ?? Duration.zero,
        updatedAt: (originalValues[#id] as String?) != null ? DateTime.now() : null,
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

  void clear() {
    title = '';
    description = '';
    clearCategoryIds();
    clearFixedTagIds();
    priority = Priority.medium;
    status = TaskStatus.scheduled;
    color = Colors.purple;
    icon = Icons.task;
  }

  // Validation
  @override
  bool get isValid {
    final title = _title.trim().isNotEmpty;
    const description = true;
    return title && description;
  }

  @override
  void resetValues() {
    title = originalValues[#title] as String;
    description = originalValues[#description] as String;
    clearCategoryIds();
    _categoryIds.addAll(originalValues[#categoryIds] as List<String>);
    clearFixedTagIds();
    _fixedTagIds.addAll(originalValues[#fixedTagIds] as List<String>);
    priority = originalValues[#priority] as Priority;
    status = originalValues[#status] as TaskStatus;
    color = Color(originalValues[#colorCode] as int);
    iconCode = originalValues[#iconCode] as int;
    archived = originalValues[#archived] as bool;
    super.resetValues();
  }
}
