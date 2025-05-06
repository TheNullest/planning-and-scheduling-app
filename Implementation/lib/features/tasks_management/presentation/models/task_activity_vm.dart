import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/models/sub_task_activity_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/tag_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task/task_vm.dart';

class TaskActivityVM extends SubTaskActivityVM<TaskVM> {
  TaskActivityVM({
    required super.task,
    required super.startAt,
    required super.endAt,
    required super.variableTags,
    required super.status,
    required this.subTaskActivities,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  final List<SubTaskActivityVM> subTaskActivities;

  @override
  TaskActivityVM copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    TaskVM? task,
    List<SubTaskActivityVM>? subTaskActivities,
    DateTime? startAt,
    DateTime? endAt,
    List<TagVM>? variableTags,
    TaskStatus? status,
    String? userId,
  }) =>
      TaskActivityVM(
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
        userId: userId ?? this.userId,
      );
}
