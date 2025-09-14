import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class TaskUpsertVM extends BaseViewModel<TaskEntity> {
  TaskUpsertVM({
    required super.userId,
  })  : _title = '',
        _color = Colors.red,
        _iconCode = Icons.task.codePoint,
        _priority = Priority.medium,
        _status = TaskStatus.scheduled,
        _totalSpentTime = Duration.zero,
        _archived = false,
        _categoryIds = [],
        _fixedTagIds = [],
        _subTasksManager = SubTaskVMsManager(userId: userId),
        super(viewModelTitle: 'Task') {
    // _scheduledDayTimes = [],
    // _scheduledIntervals = []
  }

  TaskUpsertVM.fromEntity({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
    // required ScheduleConstraintVM? scheduleConstraint,
    // required List<ScheduledDayTimeVM> scheduledDayTimes,
    // required List<ScheduledIntervalVM> scheduledIntervals,
    // GoalVM? goalVM,
  })  : _title = task.title,
        _iconCode = task.iconCode,
        _color = Color(task.colorCode),
        _archived = task.archived,
        _priority = task.priority,
        _status = task.taskStatus,
        _totalSpentTime = task.totalSpentTime,
        _categoryIds = List.from(task.categoryIds),
        _fixedTagIds = List.from(task.fixedTagIds),
        _subTasksManager = SubTaskVMsManager(
          userId: task.userId,
          // _goal = goalVM,
          // _scheduleConstraint = scheduleConstraint,
          // _scheduledDayTimes = scheduledDayTimes,
          // _scheduledIntervals = scheduledIntervals
        )
          ..setTaskId(task.id)
          ..initItems(subTasks),
        super(viewModelTitle: 'Task', userId: task.userId, entity: task) {
    _subTasksManager.addListener(notifyListeners);
  }

  final SubTaskVMsManager _subTasksManager;
  SubTaskVMsManager get subTasksManager => _subTasksManager;

  @override
  void initialize([TaskEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<Duration>(#totalSpentTime, entity.totalSpentTime);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<Priority>(#priority, entity.priority);
      addToOriginalValues<TaskStatus>(#status, entity.taskStatus);
      addToOriginalValues<List<String>>(#fixedTagIds, List.from(entity.fixedTagIds));
      addToOriginalValues<List<String>>(#categoryIds, List.from(entity.categoryIds));
      addToOriginalValues<bool>(#archived, entity.archived);
      addToOriginalValues<int?>(#colorCode, entity.colorCode);
      addToOriginalValues<int?>(#iconCode, entity.iconCode);
    } else {
      addToOriginalValues<Duration>(#totalSpentTime, Duration.zero);
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<Priority>(#priority, Priority.medium);
      addToOriginalValues<TaskStatus>(#status, TaskStatus.scheduled);

      addToOriginalValues<List<String>>(#fixedTagIds, []);
      addToOriginalValues<List<String>>(#categoryIds, []);
      addToOriginalValues<bool>(#archived, false);
      addToOriginalValues<int>(#colorCode, Colors.deepPurple.toARGB32());
      addToOriginalValues<int>(#iconCode, Icons.check.codePoint);
    }
    super.initialize(entity);
  }

  final Duration _totalSpentTime;
  Duration? get totalSpentTime => _totalSpentTime;

  late String _title;
  String get title => _title;
  set title(String value) {
    _title = value;
    processChanges(#title, value);
  }

  late Priority _priority;
  Priority get priority => _priority;
  set priority(Priority value) {
    _priority = value;
    processChanges(#priority, value);
  }

  late List<String> _categoryIds;
  List<String> get categoryIds => _categoryIds;

  void selectCat(String catId) {
    _categoryIds.add(catId);
    processChanges(#categoryIds, _categoryIds);
  }

  void deselectCat(String catId) {
    _categoryIds.remove(catId);
    processChanges(#categoryIds, _categoryIds);
  }

  void clearCategoryIds() {
    _categoryIds.clear();
    processChanges(#categoryIds, _categoryIds);
  }

  late List<String> _fixedTagIds;
  List<String> get fixedTagIds => _fixedTagIds;
  void addFixedTagId(String value) {
    _fixedTagIds.add(value);
    processChanges(#fixedTagIds, _fixedTagIds);
  }

  void selectTag(String id) {
    _fixedTagIds.add(id);
    processChanges(#fixedTagIds, _fixedTagIds);
  }

  void deselectTag(String id) {
    _fixedTagIds.remove(id);
    processChanges(#fixedTagIds, _fixedTagIds);
  }

  late TaskStatus _status;
  TaskStatus get status => _status;
  set status(TaskStatus value) {
    _status = value;
    processChanges(#status, value);
  }

  late int _iconCode;
  int get iconCode => _iconCode;
  set iconCode(int value) {
    _iconCode = value;
    processChanges(#iconCode, value);
  }

  IconData get icon => IconData(_iconCode, fontFamily: 'MaterialIcons');
  set icon(IconData value) {
    iconCode = value.codePoint;
  }

  late Color _color;
  Color get color => _color;
  set color(Color value) {
    _color = value;
    processChanges(#colorCode, value.toARGB32());
  }

  late bool _archived;
  bool get archived => _archived;
  set archived(bool value) {
    _archived = value;
    processChanges(#archived, value);
  }

  @override
  TaskEntity get toEntity => TaskEntity(
        id: getOriginalSignleValue<String?>(#id)!,
        userId: getOriginalSignleValue<String>(#userId),
        createdAt: getCreatedAt,
        updatedAt: getUpdatedAt,
        totalSpentTime: getOriginalSignleValue<Duration?>(#totalSpentTime) ?? Duration.zero,
        description: description.isNotEmpty ? description : null,
        priority: _priority,
        title: _title,
        taskStatus: _status,
        archived: _archived,
        categoryIds: categoryIds,
        fixedTagIds: fixedTagIds,
        colorCode: _color.toARGB32(),
        iconCode: _iconCode,
      );

  @override
  void onEntityCreated([TaskEntity? entity]) {
    _subTasksManager.setTaskId(getOriginalSignleValue(#id));
    super.onEntityCreated();
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
    _title = getOriginalSignleValue<String>(#title);

    _categoryIds = getOriginalListValue<String>(#categoryIds);
    _fixedTagIds = getOriginalListValue<String>(#fixedTagIds);

    _priority = getOriginalSignleValue<Priority>(#priority);
    _status = getOriginalSignleValue<TaskStatus>(#status);

    color = Color(getOriginalSignleValue<int>(#colorCode));
    _iconCode = getOriginalSignleValue<int>(#iconCode);
    _archived = getOriginalSignleValue<bool>(#archived);

    super.resetValues();
  }

  @override
  void dispose() {
    // Clean up form controller listeners
    resetValues();
    if (hasListeners) {
      this
        ..removeListener(notifyListeners)
        ..dispose();
    }
    _subTasksManager.removeListener(notifyListeners);
    super.dispose();
  }
}
