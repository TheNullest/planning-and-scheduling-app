import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/goal_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/sub_task_vm.dart';
import 'package:zamaan/presentation_shared/mappers/goal_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class SubTaskVMMapper extends ViewModelMapper<SubTaskVM, SubTaskEntity> {
  @override
  SubTaskEntity toEntity(SubTaskVM model) => SubTaskEntity(
        id: model.id,
        userId: model.userId ?? '',
        createdAt: model.createdAt!,
        taskId: model.taskId,
        priority: model.priority,
        title: model.title,
        status: model.status,
        totalSpentTime: model.totalSpentTime,
        description: model.description,
        goalId: model.goal.id,
        updatedAt: model.updatedAt,
      );

  @override
  SubTaskVM toVM(SubTaskEntity entity, {Map<String, dynamic>? relations}) {
    final goal =
        relations != null && relations.isNotEmpty ? relations['goal'] as GoalEntity? : null;
    return SubTaskVM(
      taskId: entity.taskId,
      title: entity.title,
      totalSpentTime: entity.totalSpentTime!,
      priority: entity.priority,
      status: entity.status,
      createdAt: entity.createdAt,
      description: entity.description,
      id: entity.id,
      updatedAt: entity.updatedAt,
      userId: entity.userId,
      goal: goal != null ? GoalVMMapper().toVM(goal) : GoalVM(),
    );
  }
}
