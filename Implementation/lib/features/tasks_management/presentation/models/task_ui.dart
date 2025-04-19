import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/category_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/goal_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_task_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/sub_task_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/tag_ui.dart';

class TaskUI extends BaseUIModel {
  TaskUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.title,
    required this.color,
    required this.icon,
    required this.priority,
    required this.categories,
    required this.fixedTags,
    required this.dueDate,
    required this.totalSpentTime,
    required this.subTasks,
    required this.goal,
    required this.scheduledTask,
  });

  final String title;

  final Color color;
  final IconData icon;
  final Priority priority;
  final List<CategoryUI> categories;
  final List<TagUI> fixedTags;
  final DateTime? dueDate;
  final Duration totalSpentTime;
  final List<SubTaskUI> subTasks;
  final GoalUI goal;
  final ScheduledTaskUI scheduledTask;

  @override
  TaskUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    List<CategoryUI>? categories,
    List<TagUI>? fixedTags,
    Color? color,
    IconData? icon,
    Priority? priority,
    DateTime? dueDate,
    Duration? totalSpentTime,
    List<SubTaskUI>? subTasks,
    ScheduledTaskUI? scheduledTask,
    GoalUI? goal,
  }) {
    return TaskUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      categories: categories ?? this.categories,
      fixedTags: fixedTags ?? this.fixedTags,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      priority: priority ?? this.priority,
      dueDate: dueDate ?? this.dueDate,
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      scheduledTask: scheduledTask ?? this.scheduledTask,
      subTasks: subTasks ?? this.subTasks,
      goal: goal ?? this.goal,
    );
  }
}
