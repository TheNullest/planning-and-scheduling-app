import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/form_controller.dart';

class SubTaskFormController extends FormController<SubTaskEntity> {
  SubTaskFormController({
    required super.notifyChanges,
    required String taskId,
    required super.userId,
  })  : _title = '',
        _priority = Priority.medium,
        _status = TaskStatus.scheduled,
        _totalSpentTime = Duration.zero,
        _taskId = taskId;

  SubTaskFormController.fromEntity({
    required super.notifyChanges,
    required SubTaskEntity subTask,
  })  : _totalSpentTime = subTask.totalSpentTime!,
        _title = subTask.title,
        _priority = subTask.priority,
        _description = subTask.description,
        _status = subTask.status,
        _taskId = subTask.taskId,
        super(entity: subTask, userId: subTask.userId);

  final String _taskId;

  @override
  void initialize([SubTaskEntity? entity]) {
    if (entity != null) {
      originalValues
        ..clear()
        ..addAll({
          #id: entity.id,
          #createdAt: entity.createdAt,
          #updatedAt: entity.updatedAt,
          #totalSpentTime: entity.totalSpentTime,
          #userId: entity.userId,
          #description: entity.description,
          #taskId: entity.taskId,
          #title: entity.title,
          #priority: entity.priority,
          #status: entity.status,
        });
    } else {
      originalValues
        ..clear()
        ..addAll({
          #userId: userId,
          #taskId: _taskId,
        });
    }
  }

  late final Duration _totalSpentTime;
  Duration? get totalSpentTime => _totalSpentTime;

  late String _title;
  String get title => _title;
  set title(String value) {
    _title = value;

    notifyChanges(
      isChanged(#title, _title),
    );

    notifyListeners();
  }

  String? _description;
  String? get description => _description;
  set description(String? value) {
    if (_description != value) {
      _description = value;

      notifyChanges(
        isChanged(#description, _description),
      );

      notifyListeners();
    }
  }

  late Priority _priority;
  Priority get priority => _priority;
  set priority(Priority value) {
    _priority = value;
    notifyChanges(
      isChanged(#priority, _priority),
    );
    notifyListeners();
  }

  late TaskStatus _status;
  TaskStatus get status => _status;
  set status(TaskStatus value) {
    _status = value;
    notifyChanges(
      isChanged(#status, _status),
    );
    notifyListeners();
  }

  @override
  void resetValues() {
    _title = originalValues[#title] as String;
    _description = originalValues[#description] as String;
    _priority = originalValues[#priority] as Priority;
    _status = originalValues[#status] as TaskStatus;
    super.resetValues();
  }

  @override
  SubTaskEntity get toEntity => SubTaskEntity(
        id: originalValues[#id] as String? ?? '',
        userId: originalValues[#userId] as String,
        taskId: originalValues[#taskId] as String,
        createdAt: originalValues[#createdAt] as DateTime? ?? DateTime.now(),
        totalSpentTime: originalValues[#totalSpentTime] as Duration? ?? Duration.zero,
        updatedAt: (originalValues[#id] as String?) != null ? DateTime.now() : null,
        description: _description,
        priority: _priority,
        title: _title,
        status: _status,
      );

  void clear() {
    title = '';
    description = '';
    priority = Priority.medium;
    status = TaskStatus.scheduled;
  }

  // Validation
  @override
  bool get isValid => _title.trim().isNotEmpty && (_description?.trim().isNotEmpty ?? false);
}
