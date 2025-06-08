import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';

class TaskUpsertActionButtons extends StatelessWidget {
  const TaskUpsertActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final taskManagerBloc = context.read<TasksManagerBloc>();
    final taskVM = context.read<TaskUpsertVM>();
    return ActionButtonsWidget<TaskUpsertVM>(
      viewStates: taskVM.viewStates,
      onInsert: () => taskManagerBloc.add(
        TasksManagerEvent.createTask(
          newTask: taskVM.vmFormController.toEntity,
        ),
      ),
      onUpdate: () => taskManagerBloc.add(
        TasksManagerEvent.updateTask(
          task: taskVM.vmFormController.toEntity,
        ),
      ),
      onReset: taskVM.vmFormController.resetValues,
      onDelete: () {
        taskManagerBloc.add(
          TasksManagerEvent.deleteTask(
            taskId: taskVM.vmFormController.toEntity.id,
          ),
        );
        Navigator.of(context).pop();
      },
    );
  }
}
