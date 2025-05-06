import 'package:flutter/widgets.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task/task_vm.dart';
import 'package:zamaan/presentation_shared/mappers/goal_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/sub_task_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class TaskVMMapper extends ViewModelMapper<TaskVM, TaskEntity> {
  @override
  TaskEntity toEntity(TaskVM model) => TaskEntity(
        id: model.id!,
        userId: model.userId!,
        createdAt: model.createdAt!,
        title: model.title,
        colorCode: model.color.hashCode,
        iconCode: model.icon.codePoint,
        priority: model.priority,
        subTaskIds: model.subTasks.map((item) => item.id!).toList(),
        categoryIds: List.from(model.categoryIds),
        fixedTagIds: List.from(model.fixedTagIds),
        totalSpentTime: model.totalSpentTime,
        archived: model.archived,
        taskStatus: model.taskStatus,
        scheduledDayIds: model.scheduledDayIds,
        scheduledIntervalIds: model.scheduledIntervalIds,
        scheduleConstraintId: model.scheduleConstraintId,
        description: model.description,
        updatedAt: model.updatedAt,
      );

  @override
  TaskVM toVM(TaskEntity entity, {Map<String, dynamic>? relations}) {
    final goalEntity = relations!['goal'] as GoalEntity?;
    final goal = goalEntity != null ? GoalVMMapper().toVM(relations['goal'] as GoalEntity) : null;
    return TaskVM(
      id: entity.id,
      description: entity.description,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      userId: entity.userId,
      title: entity.title,
      color: Color(entity.colorCode),
      icon: IconData(entity.iconCode),
      priority: entity.priority,
      categoryIds: entity.categoryIds,
      fixedTagIds: entity.fixedTagIds,
      totalSpentTime: entity.totalSpentTime,
      subTasks: SubTaskVMMapper().toVMList(relations['subTasks'] as List<SubTaskEntity>),
      archived: entity.archived,
      taskStatus: entity.taskStatus,
      goal: goal,
      scheduleConstraintId: entity.scheduleConstraintId,
      scheduledDayIds: entity.scheduledDayIds,
      scheduledIntervalIds: entity.scheduledIntervalIds,
    );
  }
}
