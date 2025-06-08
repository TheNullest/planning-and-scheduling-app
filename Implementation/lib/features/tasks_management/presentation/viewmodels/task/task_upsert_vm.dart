import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/task_form/task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/states/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class TaskUpsertVM extends BaseViewModel<TaskFormController> {
  TaskUpsertVM(String userId)
      : _subTasksManager = null,
        super(vmFormController: TaskFormController(userId: userId)) {
    viewStates.isItNew = true;
    // Monitor form modification state for button activation
    vmFormController.isModified.addListener(monitorModifications);

    // Monitor form validity state for submission
    vmFormController.canUpsert.addListener(monitorModifications);
  }

  // _scheduledDays = [],
  // _scheduledIntervals = []

  TaskUpsertVM.fromEntity({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
    // required ScheduleConstraintVM? scheduleConstraint,
    // required List<ScheduledDayVM> scheduledDays,
    // required List<ScheduledIntervalVM> scheduledIntervals,
    // GoalVM? goalVM,
  })  : _subTasksManager = SubTaskVMsManager(
          taskId: task.id,
          userId: task.userId,
          subTasks: subTasks,
        ),
        super(
          vmFormController: TaskFormController.fromEntity(task: task),
        )
  // _goal = goalVM,
  // _scheduleConstraint = scheduleConstraint,
  // _scheduledDays = scheduledDays,
  // _scheduledIntervals = scheduledIntervals
  {
    // Monitor form modification state for button activation
    vmFormController.isModified.addListener(monitorModifications);

    // Monitor form validity state for submission
    vmFormController.canUpsert.addListener(monitorModifications);
    _subTasksManager!.addListener(notifyListeners);
  }

  late SubTaskVMsManager? _subTasksManager;
  SubTaskVMsManager? get subTasksManager => _subTasksManager;

  final UpsertViewStates viewStates =
      UpsertViewStates(insertTitle: 'Create New SubTask', updateTitle: 'Update The SubTask');

  /// Synchronizes form modification state with button activation states.
  ///
  /// This method is automatically called when:
  ///   - Form fields are modified (dirty state changes)
  ///   - Form validation state changes (valid/invalid)
  ///
  /// It ensures:
  ///   1. Reset button is active only when form has modifications
  ///   2. Submit button is active only when form is valid
  void monitorModifications() {
    // Update reset button state based on modification status
    if (viewStates.isResetButtonActive != vmFormController.isModified.value) {
      viewStates.isResetButtonActive = vmFormController.isModified.value;
    }

    // Update submit button state based on validity status
    if (viewStates.isSaveButtonActive != vmFormController.canUpsert.value) {
      viewStates.isSaveButtonActive = vmFormController.canUpsert.value;
    }
  }

  @override
  void handleEntityCreated(String id) {
    super.handleEntityCreated(id);
    _subTasksManager = SubTaskVMsManager(
      taskId: id,
      userId: vmFormController.userId,
    );
    _subTasksManager!.addListener(notifyListeners);
    viewStates.isItNew = false;
  }

  @override
  void dispose() {
    // Clean up form controller listeners
    vmFormController.resetValues();
    if (vmFormController.hasListeners) {
      vmFormController
        ..removeListener(notifyListeners)
        ..canUpsert.removeListener(monitorModifications)
        ..dispose();
    }
    if (_subTasksManager != null) {
      _subTasksManager!.removeListener(notifyListeners);
    }
    super.dispose();
  }
}

  // late GoalVM? _goal;
  // GoalVM? get goal => _goal;
  // set goal(GoalVM? value) {
  //   _goal = value;
  //   notifyListeners();
  // }

  // late ScheduleConstraintVM? _scheduleConstraint;
  // ScheduleConstraintVM? get scheduleConstraint => _scheduleConstraint;
  // set scheduleConstraint(ScheduleConstraintVM? value) {
  //   _scheduleConstraint = value;
  //   notifyListeners();
  // }

  //-----------------------------------------
  // Collection management (immutable access)
  //-----------------------------------------

  // final List<ScheduledDayVM> _scheduledDays;
  // final List<ScheduledIntervalVM> _scheduledIntervals;
  // List<ScheduledDayVM> get scheduledDays => List.unmodifiable(_scheduledDays);
  // List<ScheduledIntervalVM> get scheduledIntervals => List.unmodifiable(_scheduledIntervals);

  // void addScheduledDay(ScheduledDayVM task) {
  //   _scheduledDays.add(task);
  //   notifyListeners();
  // }

  // void removeScheduledDay(String taskId) {
  //   _scheduledDays.removeWhere((t) => t.id == taskId);
  //   notifyListeners();
  // }

  // void addScheduledInterval(ScheduledIntervalVM task) {
  //   _scheduledIntervals.add(task);
  //   notifyListeners();
  // }

  // void removeScheduledInterval(String taskId) {
  //   _scheduledIntervals.removeWhere((t) => t.id == taskId);
  //   notifyListeners();
  // }

// ...existing code...
