import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_task_form/sub_task_form_controller.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

/// ViewModel for managing the create/update (upsert) operations of a subtask.
/// This class extends [BaseViewModel] to handle form state, validation, and
/// business logic for subtask creation and editing.
///
/// Manages:
/// - Form controller state for subtask fields
/// - Form submission state (loading, success, error)
/// - Conversion between entity and view model formats
/// - Business logic for subtask operations
class SubTaskUpsertVM extends BaseViewModel<SubTaskFormController> {
  /// Creates a ViewModel for a new subtask
  ///
  /// Parameters:
  ///   [taskId] - ID of the parent task
  ///   [userId] - ID of the current user
  SubTaskUpsertVM({
    required String taskId,
    required String userId,
  }) : super(
          vmFormController: SubTaskFormController(
            taskId: taskId,
            userId: userId,
          ),
        ) {
    // Mark this as a new (unsaved) subtask
  }

  /// Creates a ViewModel from an existing subtask entity
  ///
  /// Parameters:
  ///   [subTask] - Existing subtask entity to edit
  SubTaskUpsertVM.fromEntity({
    required SubTaskEntity subTask,
  }) : super(
          vmFormController: SubTaskFormController.fromEntity(
            subTask: subTask,
          ),
        );

  //-----------------------------
  // Goal Association (Commented)
  //-----------------------------
  // This section is reserved for future goal association functionality
  // late GoalVM? _goal;
  // GoalVM? get goal => _goal;
  // set goal(GoalVM? value) {
  //   _goal = value;
  //   notifyListeners();
  // }

  //--------------------------
  // Core Methods
  //--------------------------

  /// Handles successful entity update operation
  @override
  void handleEntityUpdated() {
    // Persist current form values as new original values
    vmFormController.updateOriginalValues();

    // Propagate to base view model
    super.handleEntityUpdated();
  }

}
