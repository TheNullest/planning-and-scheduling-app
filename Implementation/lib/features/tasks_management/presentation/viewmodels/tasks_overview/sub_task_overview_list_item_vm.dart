import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/enums.dart';

class SubTaskOverviewListItemVm {
  SubTaskOverviewListItemVm(SubTaskEntity subTask)
      : id = subTask.id,
        title = subTask.title,
        priority = subTask.priority,
        status = subTask.status;

  final String id;
  final String title;
  final Priority priority;
  final TaskStatus status;

  // TODO[Enhancement]: should mention goals here too
  // TODO[Enhancement]: should mention if it's running as "Run Time:"
  // TODO[Enhancement]: provide a formattedPriority getter for user-friendly display
}
