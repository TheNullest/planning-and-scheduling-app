import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/sub_task_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_card.dart';

class SubTasksListWidget extends StatelessWidget {
  const SubTasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final subTaskManger = context.read<SubTaskVMsManager>();
    return Column(
      children: [
        Selector<SubTaskVMsManager, bool>(
          selector: (_, manager) => manager.listUpdated,
          builder: (_, vm, __) {
            return Column(
              children: [
                Selector<SubTaskVMsManager, bool>(
                    selector: (_, manager) => manager.isEnabled,
                    builder: (_, isEnabled, __) {
                      return ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Add New SubTask'),
                        onPressed: isEnabled
                            ? () async => showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (_) => ChangeNotifierProvider<SubTaskUpsertVM>.value(
                                    value: subTaskManger.newItem(),
                                    child: const SubTaskUpsertDialog(),
                                  ),
                                )
                            : null,
                      );
                    }),
                // Spacer
                12.sizedBoxHeight,

                if (subTaskManger.items.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SubTasks:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...subTaskManger.items.map(
                        (subTaskVM) => ChangeNotifierProvider<SubTaskUpsertVM>(
                            create: (_) => subTaskVM,
                            child: SubTaskDisplayCard(subTaskVM: subTaskVM)),
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
