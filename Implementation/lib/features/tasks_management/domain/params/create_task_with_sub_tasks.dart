import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/usecase_param.dart';

class CreateTaskWithSubTasksParams extends UsecaseParam {
  CreateTaskWithSubTasksParams({required this.task, required this.subTasks, super.policy});

  final TaskEntity task;
  final List<SubTaskEntity> subTasks;
}
