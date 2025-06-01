import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/states/task_upsert_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class TaskUpsertVM extends BaseViewModel<TaskEntity> {
  TaskUpsertVM()
      : _taskUpsertFormStates = TaskUpsertFormStates(),
        _subTasksManager = SubTasksManager()

  // _scheduledDays = [],
  // _scheduledIntervals = []

  {
    _taskFormController = TaskFormController(isModified: isModified, userId: '');
  }

  TaskUpsertVM.fromEntity({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
    // required ScheduleConstraintVM? scheduleConstraint,
    // required List<ScheduledDayVM> scheduledDays,
    // required List<ScheduledIntervalVM> scheduledIntervals,
    // GoalVM? goalVM,
  })  : _subTasksManager = SubTasksManager.fromEntities(
          taskId: task.id,
          userId: task.userId,
          subTasks: subTasks,
        ),
        _taskUpsertFormStates = TaskUpsertFormStates.fromExisting()
  // _goal = goalVM,
  // _scheduleConstraint = scheduleConstraint,
  // _scheduledDays = scheduledDays,
  // _scheduledIntervals = scheduledIntervals
  {
    isItNew = false;
    _taskFormController = TaskFormController.fromEntity(task: task, isModified: isModified);
  }

  late final TaskFormController _taskFormController;
  TaskFormController get taskFormController => _taskFormController;

  late final SubTasksManager _subTasksManager;
  SubTasksManager get subTasksManager => _subTasksManager;

  late final TaskUpsertFormStates _taskUpsertFormStates;
  TaskUpsertFormStates get taskUpsertFormStates => _taskUpsertFormStates;

  @override
  void isModified(bool isChanged) {
    super.isModified(isChanged);
    _taskUpsertFormStates.isResetButtonActive = isChanged;
    _taskUpsertFormStates.isUpsertButtonActive = hasValidChanges;
    notifyListeners();
  }

  void handleTaskCreated(String taskId) {
    _taskFormController.updateOriginalValues(taskId);
    _taskUpsertFormStates.handleTaskCreated();
    _subTasksManager.handleTaskCreated(taskId: taskId, userId: _taskFormController.userId);
    notifyListeners();
  }

  void handleTaskUpdated() {
    _taskFormController.updateOriginalValues();
    super.isModified(false);
    _taskUpsertFormStates.isUpsertButtonActive = hasValidChanges;
    notifyListeners();
  }

  void clear() {
    // _goal = null;
    _taskFormController.clear();
    _subTasksManager.clear();
    // _scheduleConstraint = null;
    // _scheduledDays.clear();
    // _scheduledIntervals.clear();
    notifyListeners();
  }

  @override
  bool get isValid => _taskFormController.isValid;

  @override
  void dispose() {
    _taskFormController
      ..removeListener(notifyListeners)
      ..dispose();

    _subTasksManager
      ..removeListener(notifyListeners)
      ..dispose();

    _taskUpsertFormStates
      ..removeListener(notifyListeners)
      ..dispose();
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
