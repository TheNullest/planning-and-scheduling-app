import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/entities/task.dart';

class CreateTaskWithSubTasksParams {
  CreateTaskWithSubTasksParams({
    required this.task,
    required this.scheduleDefinitions,
  });

  final TaskEntity task;
  final List<ScheduledInstanceEntity> scheduleDefinitions;
}
