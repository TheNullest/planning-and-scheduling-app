import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/goal_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

class SubTaskUI extends BaseUIModel {
  SubTaskUI({
    required this.title,
    required this.totalSpentTime,
    required this.priority,
    required this.status,
    required this.goal,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
    this.dueDate,
  });

  final String title;
  final Priority priority;
  final TaskStatus status;
  final DateTime? dueDate;
  final Duration totalSpentTime;
  final GoalUI goal;

  @override
  SubTaskUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    Priority? priority,
    TaskStatus? status,
    DateTime? dueDate,
    Duration? totalSpentTime,
    GoalUI? goal,
    UserUI? user,
  }) {
    return SubTaskUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      priority: priority ?? this.priority,
      dueDate: dueDate ?? this.dueDate,
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      status: status ?? this.status,
      goal: goal ?? this.goal,
      user: user ?? this.user,
    );
  }
}
