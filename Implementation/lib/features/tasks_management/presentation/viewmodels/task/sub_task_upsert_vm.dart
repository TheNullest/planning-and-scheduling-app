import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
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
class SubTaskUpsertVM extends BaseViewModel<SubTaskEntity> {
  /// Creates a controller for a new subtask
  ///
  /// Parameters:
  ///   [userId] - ID of the user creating the subtask
  ///   [taskId] - ID of the parent task
  SubTaskUpsertVM({
    required super.userId,
    required String taskId,
  })  : _title = '',
        _priority = Priority.medium,
        _status = TaskStatus.scheduled,
        _totalSpentTime = Duration.zero,
        _taskId = taskId,
        super(viewModelTitle: 'SubTask');

  /// Creates a controller from an existing subtask entity
  ///
  /// Parameters:
  ///   [subTask] - Existing subtask entity to edit
  SubTaskUpsertVM.fromEntity({
    required super.userId,
    required super.entity,
  })  : _totalSpentTime = entity!.totalSpentTime!,
        _title = entity.title,
        _priority = entity.priority,
        _status = entity.status,
        _taskId = entity.taskId,
        super(
          viewModelTitle: 'SubTask',
        );

  final String _taskId; // Parent task ID (immutable)

  //-----------------------------
  // Form Field Initialization
  //-----------------------------

  /// Initializes the controller state by setting original values
  ///
  /// For existing entities:
  ///   - Populates original values from entity properties
  /// For new subtasks:
  ///   - Sets default values for all fields
  @override
  void initialize([SubTaskEntity? entity]) {
    // Clear any existing original values
    originalValues.clear();

    if (entity != null) {
      // Populate from existing entity
      addToOriginalValues<Duration?>(#totalSpentTime, entity.totalSpentTime);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<Priority>(#priority, entity.priority);
      addToOriginalValues<TaskStatus>(#status, entity.status);
    } else {
      // Set defaults for new subtask
      addToOriginalValues<Duration>(#totalSpentTime, Duration.zero);
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<Priority>(#priority, Priority.medium);
      addToOriginalValues<TaskStatus>(#status, TaskStatus.scheduled);
    }

    // Complete initialization in base class
    super.initialize(entity);
  }

  //-------------------------
  // Form Field Definitions
  //-------------------------

  late final Duration _totalSpentTime;

  /// Total time spent on the subtask (read-only)
  Duration? get totalSpentTime => _totalSpentTime;

  late String _title;

  /// SubTask title with validation
  String get title => _title;

  set title(String value) {
    _title = value;
    // Process modification and update dirty state
    processModification(#title, value);
  }

  late Priority _priority;

  /// Priority level (low, medium, high)
  Priority get priority => _priority;

  set priority(Priority value) {
    _priority = value;
    processModification(#priority, value);
  }

  late TaskStatus _status;

  /// Current status of the subtask
  TaskStatus get status => _status;

  set status(TaskStatus value) {
    _status = value;
    processModification(#status, value);
  }

  //-------------------------
  // Form Operations
  //-------------------------

  /// Resets form fields to their original values
  @override
  void resetValues() {
    title = getOriginalValue<String>(#title);
    priority = getOriginalValue<Priority>(#priority);
    status = getOriginalValue<TaskStatus>(#status);
    // Complete reset in base class
    super.resetValues();
  }

  /// Converts current form values to a [SubTaskEntity] object
  @override
  SubTaskEntity get toEntity {
    return SubTaskEntity(
      id: getOriginalValue<String?>(#id),
      userId: getOriginalValue<String>(#userId),
      taskId: _taskId,
      createdAt: getCreatedAt,
      updatedAt: getUpdatedAt,
      totalSpentTime: getOriginalValue<Duration?>(#totalSpentTime) ?? Duration.zero,
      description: description.isNotEmpty ? description : null,
      priority: _priority,
      title: _title,
      status: _status,
    );
  }

  /// Indicates whether all form fields are valid
  @override
  bool get isValid => _title.trim().isNotEmpty;
}
