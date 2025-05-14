import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/goal_vm.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class SubTaskVM extends BaseViewModel {
  SubTaskVM({
    required this.taskId,
    required this.title,
    required this.totalSpentTime,
    required this.priority,
    required this.status,
    required this.goal,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    this.dueDate,
    super.entityState,
  });
  final String taskId;
  final String title;
  final Priority priority;
  final TaskStatus status;
  final DateTime? dueDate;
  final Duration totalSpentTime;
  final GoalVM goal;

  @override
  SubTaskVM copyWith({
    String? id,
    String? taskId,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    Priority? priority,
    TaskStatus? status,
    DateTime? endAt,
    Duration? totalSpentTime,
    GoalVM? goal,
    String? userId,
  }) {
    return SubTaskVM(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      priority: priority ?? this.priority,
      dueDate: endAt ?? dueDate,
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      status: status ?? this.status,
      goal: goal ?? this.goal,
      userId: userId ?? this.userId,
    );
  }
}
