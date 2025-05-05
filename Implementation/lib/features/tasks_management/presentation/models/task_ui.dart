import 'package:flutter/widgets.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/category_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/goal_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/schedule_constraint_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_day_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_instance_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_interval_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/sub_task_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/tag_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class TaskUI extends BaseUIModel {
  TaskUI({
    required this.title,
    required this.color,
    required this.icon,
    required this.priority,
    required this.categories,
    required this.fixedTags,
    required this.totalSpentTime,
    required this.subTasks,
    required this.goal,
    required this.scheduleConstraint,
    required this.scheduledDays,
    required this.scheduledIntervals,
    required this.scheduledInstances,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory TaskUI.fromEntity({
    required TaskEntity entity,
    required String userId,
    required List<CategoryUI> categories,
    required List<TagUI> fixedTags,
    required List<SubTaskUI> subTasks,
    required GoalUI goal,
    required ScheduleConstraintUI? scheduleConstraint,
    required List<ScheduledDayUI> scheduledDays,
    required List<ScheduledIntervalUI> scheduledIntervals,
    required List<ScheduledInstanceUI> scheduledInstances,
  }) =>
      TaskUI(
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        userId: userId,
        title: entity.title,
        color: Color(entity.colorCode),
        icon: IconData(entity.iconCode),
        priority: entity.priority,
        categories: categories,
        fixedTags: fixedTags,
        totalSpentTime: entity.totalSpentTime,
        subTasks: subTasks,
        goal: goal,
        scheduleConstraint: scheduleConstraint,
        scheduledDays: scheduledDays,
        scheduledIntervals: scheduledIntervals,
        scheduledInstances: scheduledInstances,
      );

  final String title;
  final Color color;
  final IconData icon;
  final Priority priority;
  final List<CategoryUI> categories;
  final List<TagUI> fixedTags;
  final Duration totalSpentTime;
  final List<SubTaskUI> subTasks;
  final GoalUI goal;
  final ScheduleConstraintUI? scheduleConstraint;
  final List<ScheduledDayUI> scheduledDays;
  final List<ScheduledIntervalUI> scheduledIntervals;
  final List<ScheduledInstanceUI> scheduledInstances;

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
    Duration? totalSpentTime,
    List<SubTaskUI>? subTasks,
    ScheduleConstraintUI ? scheduleConstraint,
    List<ScheduledDayUI>? scheduledDays,
    List<ScheduledIntervalUI>? scheduledIntervals,
    List<ScheduledInstanceUI>? scheduledInstances,
    GoalUI? goal,
    String? userId,
  }) {
    return TaskUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      categories: categories ?? List.from(this.categories),
      fixedTags: fixedTags ?? List.from(this.fixedTags),
      color: color ?? this.color,
      icon: icon ?? this.icon,
      priority: priority ?? this.priority,
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      scheduleConstraint: scheduleConstraint ?? this.scheduleConstraint,
      scheduledDays: scheduledDays ?? List.from(this.scheduledDays),
      scheduledIntervals: scheduledIntervals ?? List.from(this.scheduledIntervals),
      scheduledInstances: scheduledInstances ?? List.from(this.scheduledInstances),
      subTasks: subTasks ?? List.from(this.subTasks),
      goal: goal ?? this.goal,
      userId: userId ?? this.userId,
    );
  }
}
