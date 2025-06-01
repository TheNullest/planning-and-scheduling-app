import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/states/sub_task_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/states/sub_tasks_list_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_form.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_action_buttons.dart';

class SubTasksListWidget extends StatelessWidget {
  const SubTasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final subTaskManger = context.read<SubTasksManager>();

    return SliverToBoxAdapter(
      child: Column(
        children: [
          // "Add New SubTask" Button
          ChangeNotifierProvider<SubTasksListStates>.value(
            value: subTaskManger.subTasksListStates,
            child: Consumer<SubTasksListStates>(
              builder: (_, states, __) {
                if (states.isListUpdated) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    states.isListUpdated = false;
                  });
                }
                return Column(
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.add),
                      label: const Text('Add New SubTask'),
                      onPressed: states.isAddButtonActive ? subTaskManger.addNewSubTask : null,
                    ),
                    // Spacer
                    12.sizedBoxHeight,

                    if (subTaskManger.subTaskVMs.isNotEmpty)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SubTasks:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ...subTaskManger.subTaskVMs.map(
                            (subTaskVM) => ChangeNotifierProvider<SubTaskUpsertVM>.value(
                              value: subTaskVM,
                              child: Selector<SubTaskUpsertVM, ({bool isItLocked, bool isChanged})>(
                                selector: (_, vm) =>
                                    (isItLocked: vm.isLocked, isChanged: vm.hasValidChanges),
                                builder: (_, values, __) => !values.isItLocked
                                    ? Column(
                                        children: [
                                          ChangeNotifierProvider<SubTaskFormController>.value(
                                            value: subTaskVM.subTaskFormController,
                                            child: Column(
                                              children: [
                                                const SubTaskFormWidget(),
                                                ChangeNotifierProvider<
                                                    SubTaskUpsertFormStates>.value(
                                                  value: subTaskVM.subTaskFormStates,
                                                  child: const SubTaskUpsertActionButtons(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    : ListTile(
                                        title: Text(
                                          subTaskVM.subTaskFormController.title,
                                        ),
                                        subtitle: Text(
                                          'Priority: ${subTaskVM.subTaskFormController.priority.name}',
                                        ),
                                        onLongPress: () =>
                                            subTaskManger.handleChangedCurrentSubTask(subTaskVM),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      )
                    else
                      const SizedBox.shrink(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
