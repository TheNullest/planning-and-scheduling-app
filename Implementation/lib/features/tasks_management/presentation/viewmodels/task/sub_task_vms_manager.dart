import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';

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
class SubTaskVMsManager extends BaseVmsManager<SubTaskEntity, SubTaskUpsertVM> {
  /// Creates a manager for subtask view models
  ///
  /// Parameters:
  ///   [userId] - ID of the current user
  SubTaskVMsManager({
    required super.userId,
  });

  late String _taskId = ''; // Parent task ID
  void setTaskId(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Task ID cannot be empty');
    }
    if (!isValidUUID(value)) {
      throw ArgumentError('Invalid Task ID');
    }
    _taskId = value;
    notifyListeners();
  }

  bool get isEnabled => _taskId.isNotEmpty;

  @override
  SubTaskUpsertVM newItem([SubTaskUpsertVM? item]) =>
      super.newItem(SubTaskUpsertVM(userId: userId, taskId: _taskId));

  @override
  SubTaskUpsertVM toViewModel(SubTaskEntity entity) => SubTaskUpsertVM.fromEntity(
        entity: entity,
      );
}
