import 'package:zamaan/core/enums/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/models/sub_task_activity_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/tag_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_ui.dart';

class TaskActivityUI extends SubTaskActivityUI<TaskUI> {
  TaskActivityUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required super.task,
    required super.startAt,
    required super.endAt,
    required super.variableTags,
    required super.status,
    required this.subTaskActivities,
  });

  final List<SubTaskActivityUI> subTaskActivities;

  @override
  TaskActivityUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    TaskUI? task,
    List<SubTaskActivityUI>? subTaskActivities,
    DateTime? startAt,
    DateTime? endAt,
    List<TagUI>? variableTags,
    TaskStatus? status,
  }) =>
      TaskActivityUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        task: task ?? this.task,
        subTaskActivities: subTaskActivities ?? this.subTaskActivities,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        variableTags: variableTags ?? this.variableTags,
        status: status ?? this.status,
      );
}
