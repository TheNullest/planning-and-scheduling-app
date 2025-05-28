import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class SubTaskUpsertVM extends BaseViewModel<SubTaskEntity> {
  SubTaskUpsertVM({
    required String taskId,
    required String userId,
  }) : super() {
    _subTaskFormController = SubTaskFormController(
      notifyChanges: notifyChanges,
      taskId: taskId,
      userId: userId,
    );
  }

  SubTaskUpsertVM.fromEntity({
    required SubTaskEntity subTask,
    // GoalVM? goalVM,
  }) {
    _subTaskFormController =
        SubTaskFormController.fromEntity(subTask: subTask, notifyChanges: notifyChanges);
  }

  late SubTaskFormController _subTaskFormController;
  SubTaskFormController get subTaskFormController => _subTaskFormController;
  // late GoalVM? _goal;
  // GoalVM? get goal => _goal;
  // set goal(GoalVM? value) {
  //   _goal = value;
  //   notifyListeners();
  // }

  void setAsUpdatable() => isLocked = false;

  void updated() {
    _subTaskFormController.updateOriginalValues();
    isLocked = true;
  }

  @override
  void reset() {
    _subTaskFormController.resetValues();
    super.reset();
  }

  void handleCancelation() {
    _subTaskFormController.resetValues();
    isLocked = true;
  }

  void clear() {
    _subTaskFormController.clear();
  }

  /// The copyWith method returns a new instance of SubTaskUpsertVM with the
  /// provided values overriding the current ones.
  SubTaskUpsertVM copyWith() {
    return SubTaskUpsertVM.fromEntity(subTask: _subTaskFormController.toEntity);
  }

  @override
  bool get isValid => _subTaskFormController.isValid;
}
