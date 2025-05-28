import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';

class TaskUpsertArguments {
  TaskUpsertArguments({required this.task, required this.subTasks});

  final TaskEntity task;
  final List<SubTaskEntity> subTasks;
}
