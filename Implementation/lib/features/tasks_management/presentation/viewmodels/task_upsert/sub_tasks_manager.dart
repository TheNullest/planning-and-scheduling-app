import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_upsert_vm.dart';

class SubTasksManager with ChangeNotifier {
  SubTasksManager({required this.taskId, required this.userId}) {
    addNewSubTask();
  }

  SubTasksManager.fromEntities({
    required List<SubTaskEntity> subTasks,
    required this.taskId,
    required this.userId,
  }) {
    _subTaskVMs.addAll(
      subTasks.map((item) => SubTaskUpsertVM.fromEntity(subTask: item)).toList(),
    );
  }

  final String taskId;
  final String userId;

  List<SubTaskUpsertVM> get subTaskVMs => _subTaskVMs;

  final _subTaskVMs = <SubTaskUpsertVM>[];

  bool get isNotSubTasksEmpty => _subTaskVMs.isNotEmpty;

  void addNewSubTask() {
    final subTask = SubTaskUpsertVM(taskId: taskId, userId: userId);

    subTaskVMs.add(subTask);
    notifyListeners();
  }

  void handleSubTaskCreated(String subTaskId) {
    _subTaskVMs.last.subTaskFormController.addToOriginalValues({#id: subTaskId});
  }

  void handleSubTaskUpdated(String id) {
    subTaskVMs.firstWhere((item) => item.subTaskFormController.id == id).updated();
  }

  void handleSubTaskDeleted(String id) {
    _subTaskVMs.removeWhere((s) => s.subTaskFormController.id.compareTo(id) == 0);
    notifyListeners();
  }

  void clear() => _subTaskVMs.clear();

  bool get isValid => !subTaskVMs.any((item) => item.isValid == false);
}
