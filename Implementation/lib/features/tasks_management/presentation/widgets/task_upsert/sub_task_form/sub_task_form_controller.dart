import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';

/// Manages form state and data for subtask creation and editing operations.
/// Extends [BaseFormController] to leverage common form functionality while
/// providing subtask-specific field management and validation.
///
/// Responsibilities:
/// 1. Manages subtask form fields (title, description, priority, status)
/// 2. Handles initialization from entities (for editing) or defaults (for creation)
/// 3. Performs validation
/// 4. Converts form data to entity objects
/// 5. Manages original values for dirty checking
class SubTaskFormController extends BaseFormController<SubTaskEntity> {
  /// Creates a controller for a new subtask
  ///
  /// Parameters:
  ///   [userId] - ID of the user creating the subtask
  ///   [taskId] - ID of the parent task
  SubTaskFormController({
    required super.userId,
    required String taskId,
  })  : _title = '',
        _priority = Priority.medium,
        _status = TaskStatus.scheduled,
        _totalSpentTime = Duration.zero,
        _taskId = taskId;

  /// Creates a controller from an existing subtask entity
  ///
  /// Parameters:
  ///   [subTask] - Existing subtask entity to edit
  SubTaskFormController.fromEntity({
    required SubTaskEntity subTask,
  })  : _totalSpentTime = subTask.totalSpentTime!,
        _title = subTask.title,
        _priority = subTask.priority,
        _description = subTask.description,
        _status = subTask.status,
        _taskId = subTask.taskId,
        super(entity: subTask, userId: subTask.userId);

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
      addToOriginalValues<String?>(#id, entity.id);
      addToOriginalValues<DateTime?>(#createdAt, entity.createdAt);
      addToOriginalValues<DateTime?>(#updatedAt, entity.updatedAt);
      addToOriginalValues<Duration?>(#totalSpentTime, entity.totalSpentTime);
      addToOriginalValues<String>(#userId, entity.userId);
      addToOriginalValues<String?>(#description, entity.description);
      addToOriginalValues<String>(#title, entity.title);
      addToOriginalValues<Priority>(#priority, entity.priority);
      addToOriginalValues<TaskStatus>(#status, entity.status);
    } else {
      // Set defaults for new subtask
      addToOriginalValues<String?>(#id, null);
      addToOriginalValues<String>(#userId, userId);
      addToOriginalValues<DateTime>(#createdAt, DateTime.now());
      addToOriginalValues<DateTime?>(#updatedAt, null);
      addToOriginalValues<Duration>(#totalSpentTime, Duration.zero);
      addToOriginalValues<String?>(#description, null);
      addToOriginalValues<String>(#title, '');
      addToOriginalValues<Priority>(#priority, Priority.medium);
      addToOriginalValues<TaskStatus>(#status, TaskStatus.scheduled);
    }

    // Complete initialization in base class
    super.initialize();
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
    // Trigger validation update
    _validate();
  }

  String? _description;

  /// Optional description
  String? get description => _description;

  set description(String? value) {
    if (_description != value) {
      _description = value;
      // Only process if value actually changed
      processModification(#description, value);
    }
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
    description = getOriginalValue<String?>(#description);
    priority = getOriginalValue<Priority>(#priority);
    status = getOriginalValue<TaskStatus>(#status);

    // Complete reset in base class
    super.resetValues();
  }

  /// Clears all form fields to default empty state
  @override
  void clear() {
    title = '';
    description = '';
    priority = Priority.medium;
    status = TaskStatus.scheduled;
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
      description: _description ?? '',
      priority: _priority,
      title: _title,
      status: _status,
    );
  }

  //-------------------------
  // Validation Logic
  //-------------------------

  /// Performs field validation
  void _validate() {
    // Title must not be empty
    final isValid = _title.trim().isNotEmpty;

    // Update validation state
    canUpsert.value = isValid;
  }

  /// Indicates whether all form fields are valid
  @override
  bool get isValid => _title.trim().isNotEmpty;
}
