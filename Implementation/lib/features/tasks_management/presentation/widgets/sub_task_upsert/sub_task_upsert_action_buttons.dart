import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/states/sub_task_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';

class SubTaskUpsertActionButtons extends StatelessWidget {
  const SubTaskUpsertActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final taskManagerBloc = context.read<TasksManagerBloc>();
    final subTaskVM = context.read<SubTaskUpsertVM>();
    return Consumer<SubTaskUpsertFormStates>(
      builder: (context, formStates, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.read<SubTasksManager>().checkAddButtonActivation();
        });
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Upsert Button
            IconButton(
              icon: Icon(formStates.upsertButtonIcon),
              onPressed: formStates.isUpsertButtonActive
                  ? formStates.isNew
                      ? () => taskManagerBloc.add(
                            TasksManagerEvent.createSubTask(
                              newSubTask: subTaskVM.subTaskFormController.toEntity,
                            ),
                          )
                      : () => taskManagerBloc.add(
                            TasksManagerEvent.updateSubTask(
                              subTask: subTaskVM.subTaskFormController.toEntity,
                            ),
                          )
                  : null,
            ),

            // Reset Button
            IconButton(
              icon: Icon(formStates.resetButtonIcon),
              onPressed: formStates.isResetButtonActive
                  ? subTaskVM.subTaskFormController.resetValues
                  : null,
            ),

            // Delete Button
            IconButton(
              color: Colors.red,
              icon: Icon(formStates.deleteButtonIcon),
              onPressed: formStates.isDeleteButtonActive
                  ? () => taskManagerBloc.add(
                        TasksManagerEvent.deleteSubTask(
                          subTaskId: subTaskVM.subTaskFormController.toEntity.id,
                        ),
                      )
                  : null,
            ),

            // Cancel Button
            IconButton(
              icon: Icon(formStates.cancelButtonIcon),
              onPressed: context.read<SubTasksManager>().handleCancelation,
            ),
          ],
        );
      },
    );
  }
}
