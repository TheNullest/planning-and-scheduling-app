import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/states/task_upsert_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class TaskUpsertVM extends BaseViewModel<TaskEntity> {
  TaskUpsertVM()
      : taskUpsertFormStates = TaskUpsertFormStates(),
        super()

  // _scheduledDays = [],
  // _scheduledIntervals = []

  {
    taskFormController = TaskFormController(notifyChanges: notifyChanges, userId: '');
  }

  TaskUpsertVM.fromEntity({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
    // required ScheduleConstraintVM? scheduleConstraint,
    // required List<ScheduledDayVM> scheduledDays,
    // required List<ScheduledIntervalVM> scheduledIntervals,
    // GoalVM? goalVM,
  })  : subTasksManager = SubTasksManager.fromEntities(
          taskId: task.id,
          userId: task.userId,
          subTasks: subTasks,
        ),
        taskUpsertFormStates = TaskUpsertFormStates.fromExisting()
  // _goal = goalVM,
  // _scheduleConstraint = scheduleConstraint,
  // _scheduledDays = scheduledDays,
  // _scheduledIntervals = scheduledIntervals
  {
    isItNew = false;
    taskFormController = TaskFormController.fromEntity(task: task, notifyChanges: notifyChanges);
  }

  late final TaskFormController taskFormController;
  final TaskUpsertFormStates taskUpsertFormStates;
  late final SubTasksManager subTasksManager;

  @override
  void notifyChanges(bool isChanged) {
    super.notifyChanges(isChanged);
    taskUpsertFormStates.isResetButtonActive = isChanged;
    taskUpsertFormStates.isUpsertButtonActive = hasChanges;
    notifyListeners();
  }

  void handleTaskCreated(String taskId) {
    taskFormController.addToOriginalValues({#id: taskId});
    isItNew = false;
    notifyListeners();
  }

  void handleTaskUpdated() {
    taskFormController.updateOriginalValues();
    super.notifyChanges(false);
    taskUpsertFormStates.isUpsertButtonActive = hasChanges;
    notifyListeners();
  }

  void clear() {
    // _goal = null;
    taskFormController.clear();
    subTasksManager.clear();
    // _scheduleConstraint = null;
    // _scheduledDays.clear();
    // _scheduledIntervals.clear();
    notifyListeners();
  }

  @override
  bool get isValid => taskFormController.isValid;

  @override
  void dispose() {
    taskFormController
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
