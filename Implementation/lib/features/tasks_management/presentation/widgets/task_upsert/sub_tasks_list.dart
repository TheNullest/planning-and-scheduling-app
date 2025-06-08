import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_form.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_action_buttons.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_vm.dart';

class SubTasksListWidget extends StatelessWidget {
  const SubTasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final subTaskManger = context.read<SubTaskVMsManager>();
    return Column(
      children: [
        Selector<SubTaskVMsManager, ({bool isAddButtonActive, bool listUpdated})>(
          selector: (_, manager) => (
            isAddButtonActive: manager.isAddButtonActive,
            listUpdated: manager.viewModelsListIsUpdated
          ),
          builder: (_, vm, __) {
            return Column(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add New SubTask'),
                  onPressed:
                      subTaskManger.isAddButtonActive ? subTaskManger.addNewToViewModelsList : null,
                ),
                // Spacer
                12.sizedBoxHeight,

                if (subTaskManger.viewModelsList.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SubTasks:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...subTaskManger.viewModelsList.map(
                        (subTaskVM) => ChangeNotifierProvider<SubTaskUpsertVM>(
                          create: (_) => subTaskVM,
                          child: ValueListenableProvider<bool>.value(
                              value: subTaskVM.isLocked,
                              child: Consumer<bool>(
                                builder: (context, isItLocked, _) => !isItLocked
                                    ? Column(
                                        children: [
                                          Column(
                                            children: [
                                              const SubTaskFormWidget(),
                                              SubTaskUpsertActionButtons(
                                                onCancel: subTaskManger.currentViewModelFormClosed,
                                                viewStates: subTaskManger.viewStates,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    : ListTile(
                                        title: Text(
                                          subTaskVM.vmFormController.title,
                                        ),
                                        subtitle: Text(
                                          'Priority: ${subTaskVM.vmFormController.priority.name}',
                                        ),
                                        onLongPress: () =>
                                            subTaskManger.currentViewModelChanged(subTaskVM),
                                      ),
                              )),
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
      ],
    );
  }
}
