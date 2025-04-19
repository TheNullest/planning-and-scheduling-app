import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/goal_ui.dart';

class SubTaskUI extends BaseUIModel {
  SubTaskUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.title,
    required this.totalSpentTime,
    required this.priority,
    required this.status,
    required this.goal,
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
    );
  }
}
