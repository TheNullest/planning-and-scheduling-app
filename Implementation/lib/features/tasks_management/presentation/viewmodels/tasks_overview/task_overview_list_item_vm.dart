import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tasks_overview/sub_task_overview_list_item_vm.dart';

class TaskOverviewListItemVm {
  TaskOverviewListItemVm({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
    required this.categories,
    required this.tags,
    this.nextScheduledDate,
  })  : id = task.id,
        title = task.title,
        createdAt = task.createdAt,
        priority = task.priority,
        status = task.taskStatus,
        // map each SubTaskEntity to its overview VM
        subTasks = subTasks.map((subTask) => SubTaskOverviewListItemVm(subTask)).toList(),
        color = Color(task.colorCode);

  final String id;
  final String title;
  final DateTime createdAt;
  final Priority priority;
  final TaskStatus status;
  final List<SubTaskOverviewListItemVm> subTasks;
  final DateTime? nextScheduledDate;
  final List<CategoryListItemVm> categories;
  final List<TagListItemVm> tags;
  final Color color;

  // TODO[Enhancement]: should mention goals here too
  // TODO[Enhancement]: should mention if it's running as "Run Time:"
  // TODO[Enhancement]: if it's running expose number of completed vs. total subtasks (for quick progress display)
  // TODO[Enhancement]: provide a formattedPriority getter for user-friendly display

  String get nextScheduledLabel =>
      nextScheduledDate != null ? nextScheduledDate!.toDateString : 'No schedule';
}
