import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/models/upsert_view_states.dart';

class SubTaskUpsertActionButtons extends StatelessWidget {
  const SubTaskUpsertActionButtons({required this.onCancel, required this.viewStates, super.key});

  final void Function() onCancel;
  final UpsertViewStates viewStates;
  @override
  Widget build(BuildContext context) {
    final taskManagerBloc = context.read<TasksManagerBloc>();
    final subTaskVM = context.read<SubTaskUpsertVM>();

    return ActionButtonsWidget<SubTaskUpsertVM>(
      viewStates: viewStates,
      onSubmit: () => taskManagerBloc.add(
        TasksManagerEvent.createSubTask(
          newSubTask: subTaskVM.toEntity,
        ),
      ),
      onUpdate: () => taskManagerBloc.add(
        TasksManagerEvent.updateSubTask(
          subTask: subTaskVM.toEntity,
        ),
      ),
      onReset: subTaskVM.resetValues,
      onDelete: () {
        taskManagerBloc.add(
          TasksManagerEvent.deleteSubTask(
            subTaskId: subTaskVM.toEntity.id,
          ),
        );
      },
    );
  }
}
