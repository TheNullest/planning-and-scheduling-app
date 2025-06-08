import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_vm.dart';
import 'package:zamaan/presentation_shared/models/states/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vms_manager.dart';

/// Manages a collection of [SubTaskUpsertVM] view models for handling subtasks
/// within a parent task context. This class coordinates the creation, modification,
/// and deletion of subtask view models while maintaining UI state consistency.
///
/// Key Responsibilities:
/// - Initializes subtask VMs from existing entities
/// - Tracks the currently active subtask being edited
/// - Manages add/remove operations for subtask VMs
/// - Handles form state changes and button activation
/// - Coordinates UI updates through ChangeNotifier
class SubTaskVMsManager extends BaseVMsManager<SubTaskUpsertVM, SubTaskEntity> {
  /// Creates a manager for subtask view models
  ///
  /// Parameters:
  ///   [taskId] - ID of the parent task
  ///   [userId] - ID of the current user
  ///   [subTasks] - Optional list of existing subtask entities to initialize
  SubTaskVMsManager({
    required String taskId,
    required super.userId,
    List<SubTaskEntity> subTasks = const [],
  })  : _taskId = taskId,
        super(
            viewStates: UpsertViewStates(
                insertTitle: 'Create New SubTask', updateTitle: 'Update The SubTask')) {
    intiViewModelsList(subTasks);
  }

  late final String _taskId; // Parent task ID

  @override
  void intiViewModelsList([List<SubTaskEntity>? entities]) {
    // Initialize with existing subtasks
    viewModelsList = entities!.map((item) {
      // Create VM from entity and set up listeners
      final subTaskVM = SubTaskUpsertVM.fromEntity(subTask: item)..addListener(notifyListeners);

      // Listen for form modifications to update button state
      subTaskVM.vmFormController.isModified.addListener(() {
        isAddButtonActive = !subTaskVM.vmFormController.isModified.value;
      });
      return subTaskVM;
    }).toList();
  }

  /// Adds a new subtask view model to the list
  @override
  void addNewToViewModelsList() {
    viewStates.isItNew = true;
    // Create new subtask VM
    final subTaskVM = SubTaskUpsertVM(taskId: _taskId, userId: userId)
      ..addListener(notifyListeners);

    // Listen for form modifications
    subTaskVM.vmFormController.isModified.addListener(() {
      isAddButtonActive = !subTaskVM.vmFormController.isModified.value;
    });

    // Set as current subtask and add to list
    currentViewModelChanged(subTaskVM);
    viewModelsList.add(subTaskVM);

    super.addNewToViewModelsList();
  }

  /// Updates manager state when parent task is created
  ///
  /// Parameters:
  ///   [taskId] - Newly created task ID
  ///   [userId] - Current user ID
  void handleTaskCreated(String taskId) {
    _taskId = taskId;
    isAddButtonActive = true;
  }
}
