import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/states/sub_task_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class SubTaskUpsertVM extends BaseViewModel<SubTaskEntity> {
  SubTaskUpsertVM({
    required String taskId,
    required String userId,
  }) : _subTaskFormStates = SubTaskUpsertFormStates() {
    _subTaskFormController = SubTaskFormController(
      isModified: isModified,
      taskId: taskId,
      userId: userId,
    );
  }

  SubTaskUpsertVM.fromEntity({
    required SubTaskEntity subTask,
    // GoalVM? goalVM,
  }) : _subTaskFormStates = SubTaskUpsertFormStates.fromExisting() {
    _subTaskFormController =
        SubTaskFormController.fromEntity(subTask: subTask, isModified: isModified);
  }

  late final SubTaskFormController _subTaskFormController;
  SubTaskFormController get subTaskFormController => _subTaskFormController;

  late final SubTaskUpsertFormStates _subTaskFormStates;
  SubTaskUpsertFormStates get subTaskFormStates => _subTaskFormStates;

  // late GoalVM? _goal;
  // GoalVM? get goal => _goal;
  // set goal(GoalVM? value) {
  //   _goal = value;
  //   notifyListeners();
  // }

  void setAsUpdatable() => isLocked = false;

  void updated() {
    _subTaskFormController.updateOriginalValues();
  }

  @override
  void isModified(bool isChanged) {
    super.isModified(isChanged);
    _subTaskFormStates.isResetButtonActive = isChanged;
    _subTaskFormStates.isUpsertButtonActive = hasValidChanges;
    notifyListeners();
  }

  void handleSubTaskUpdated() {
    _subTaskFormController.updateOriginalValues();
    super.isModified(false);
    _subTaskFormStates.isUpsertButtonActive = hasValidChanges;
    notifyListeners();
  }

  void closeForm() {
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

  @override
  void dispose() {
    _subTaskFormController
      ..removeListener(notifyListeners)
      ..dispose();
    super.dispose();

    _subTaskFormStates
      ..removeListener(notifyListeners)
      ..dispose();
    super.dispose();
  }
}
