import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';
import 'package:zamaan/presentation_shared/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/dropdown_button.dart';

class SubTaskUpsertFormWidget extends StatefulWidget {
  const SubTaskUpsertFormWidget({super.key});

  @override
  State<SubTaskUpsertFormWidget> createState() => _SubTaskUpsertFormWidgetState();
}

class _SubTaskUpsertFormWidgetState extends State<SubTaskUpsertFormWidget> {
  late final SubTaskUpsertVM subTaskVM;
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;
  late final TasksManagerBloc tasksManagerBloc;

  @override
  void initState() {
    subTaskVM = context.read<SubTaskUpsertVM>();
    titleController = TextEditingController(text: subTaskVM.title);
    descriptionController = TextEditingController(text: subTaskVM.description);
    tasksManagerBloc = context.read<TasksManagerBloc>();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.text = subTaskVM.title;
      descriptionController.text = subTaskVM.description;
      subTaskVM.shouldResetInputs = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.sizedBoxHeight,
        Text(subTaskVM.viewStates.widgetTitle(subTaskVM.isNewItem.value),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        16.sizedBoxHeight,
        Row(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Field
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Selector<SubTaskUpsertVM, bool>(
                      selector: (_, vm) => vm.shouldResetInputs,
                      builder: (context, reset, _) {
                        if (reset) resetTextControllers();
                        return TextFormField(
                          controller: titleController,
                          decoration: const InputDecoration(
                            labelText: 'Title',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) => subTaskVM.isValid ? 'Title is required' : null,
                          onChanged: (value) => subTaskVM.title = value,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Description Field
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => subTaskVM.isValid ? 'Description is required' : null,
                      onChanged: (value) => subTaskVM.description = value,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Status & Priority Row
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        // Task Status Dropdown
                        CustomDropdownButtonWidget<SubTaskUpsertVM, TaskStatus>(
                          label: 'Status',
                          selector: (_, vm) => vm.status,
                          items: TaskStatus.values,
                          itemBuilder: (status) => Text(status.name),
                          onChanged: (status) => subTaskVM.status = status!,
                        ),

                        const SizedBox(width: 16),

                        // Priority Dropdown
                        CustomDropdownButtonWidget<SubTaskUpsertVM, Priority>(
                          label: 'Priority',
                          selector: (_, vm) => vm.priority,
                          items: Priority.values,
                          itemBuilder: (priority) => Text(priority.name),
                          onChanged: (priority) => subTaskVM.priority = priority!,
                        ),
                      ],
                    ),
                  ),
                  16.sizedBoxHeight,

                  Selector<SubTaskUpsertVM, bool>(
                    selector: (_, vm) => vm.isNewItem.value,
                    builder: (_, isNewItem, __) {
                      return ActionButtonsWidget(
                        viewStates: subTaskVM.viewStates,
                        onSubmit: () => tasksManagerBloc.add(
                          TasksManagerEvent.createSubTask(
                            newSubTask: subTaskVM.toEntity,
                          ),
                        ),
                        onUpdate: () => tasksManagerBloc.add(
                          TasksManagerEvent.updateSubTask(
                            subTask: subTaskVM.toEntity,
                          ),
                        ),
                        onDelete: () {
                          subTaskVM.markAsSoftRemoved();
                          tasksManagerBloc.add(
                            TasksManagerEvent.deleteSubTask(
                              subTaskId: subTaskVM.id!,
                            ),
                          );
                        },
                        onReset: subTaskVM.resetValues,
                        isNewItem: isNewItem,
                      );
                    },
                  ),
                  16.sizedBoxHeight,
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
