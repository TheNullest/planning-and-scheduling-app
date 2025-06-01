import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/states/sub_tasks_list_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_upsert_vm.dart';

class SubTasksManager with ChangeNotifier {
  SubTasksManager();

  SubTasksManager.fromEntities({
    required List<SubTaskEntity> subTasks,
    required String taskId,
    required String userId,
  })  : _userId = userId,
        _taskId = taskId {
    _subTaskVMs.addAll(
      subTasks.map((item) => SubTaskUpsertVM.fromEntity(subTask: item)).toList(),
    );
  }

  final SubTasksListStates subTasksListStates = SubTasksListStates();

  late final String _taskId;
  late final String _userId;

  String? currentSubTaskId;

  SubTaskUpsertVM? get currentSubTaskVM {
    if (currentSubTaskId == null || currentSubTaskId!.isEmpty) return null;
    return subTaskVMs.firstWhere(
      (item) => item.subTaskFormController.id == currentSubTaskId,
      orElse: () => SubTaskUpsertVM(taskId: _taskId, userId: _userId),
    );
  }

  List<SubTaskUpsertVM> get subTaskVMs => _subTaskVMs;
  final _subTaskVMs = <SubTaskUpsertVM>[];

  void handleTaskCreated({
    required String taskId,
    required String userId,
  }) {
    _userId = userId;
    _taskId = taskId;
    subTasksListStates.isAddButtonActive = true;
  }

  void addNewSubTask() {
    final subTask = SubTaskUpsertVM(taskId: _taskId, userId: _userId);
    handleChangedCurrentSubTask(subTask);
    subTaskVMs.add(subTask);
    checkAddButtonActivation();
  }

  void handleChangedCurrentSubTask(SubTaskUpsertVM subTaskVM) {
    closeCurrentSubTaskForm();

    currentSubTaskId = subTaskVM.subTaskFormController.id;
    subTaskVM.setAsUpdatable();
  }

  void closeCurrentSubTaskForm() {
    if (currentSubTaskId != null && currentSubTaskId!.isNotEmpty) {
      currentSubTaskVM!.closeForm();
    }
    currentSubTaskId = null;
  }

  void handleSubTaskCreated(String subTaskId) {
    _subTaskVMs.last.subTaskFormController.updateOriginalValues(subTaskId);
    _subTaskVMs.last.subTaskFormStates.handleTaskCreated();
    currentSubTaskId = subTaskId;
    subTasksListStates.isListUpdated = true;
    notifyListeners();
    checkAddButtonActivation();
  }

  void checkAddButtonActivation() {
    subTasksListStates.isAddButtonActive = !(currentSubTaskVM?.hasValidChanges ?? false);
  }

  void handleSubTaskUpdated(String id) {
    currentSubTaskVM!.updated();
    checkAddButtonActivation();
  }

  void handleSubTaskDeleted(String? id) {
    closeCurrentSubTaskForm();
    _subTaskVMs.removeWhere((s) => s.subTaskFormController.id?.compareTo(id!) == 0);
    subTasksListStates.isListUpdated = true;
    notifyListeners();
    checkAddButtonActivation();
  }

  void handleCancelation() {
    if (currentSubTaskId == null || currentSubTaskId!.isEmpty) {
      _handleNewSubTaskCancelation();
    } else {
      closeCurrentSubTaskForm();
    }
  }

  void _handleNewSubTaskCancelation() {
    if (subTaskVMs.isNotEmpty) {
      subTaskVMs.removeLast();
      subTasksListStates.isAddButtonActive = true;
      notifyListeners();
    }
  }

  void clear() => _subTaskVMs.clear();

  bool get isValid => !subTaskVMs.any((item) => item.isValid == false);
}
