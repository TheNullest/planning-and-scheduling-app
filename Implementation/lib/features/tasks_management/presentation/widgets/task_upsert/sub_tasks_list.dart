import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_task_form.dart';

class SubTasksListWidget extends StatelessWidget {
  const SubTasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // // "Add New SubTask" Button
          // Selector<SubTasksManager, ({SubTaskUpsertVM subTaskVM, bool canAdd})>(
          //   selector: (_, vm) => (
          //     subTaskVM: vm.currentSubTask!,
          //     canAdd: vm.canAddNewSubTask,
          //   ),
          //   builder: (_, values, __) => values.canAdd
          //       ? ElevatedButton.icon(
          //           icon: const Icon(Icons.add),
          //           label: const Text('Add New SubTask'),
          //           onPressed: () {
          //             context.read<TasksManagerBloc>().add(
          //                   TasksManagerEvent.createSubTask(
          //                     newSubTask: values.subTaskVM.subTaskFormController.toNewEntity,
          //                   ),
          //                 );
          //           },
          //         )
          //       : const SizedBox.shrink(),
          // ),

          // Spacer
          12.sizedBoxHeight,

          // SubTasks List
          Selector<SubTasksManager, List<SubTaskUpsertVM>>(
            selector: (_, vm) => vm.subTaskVMs,
            builder: (_, values, __) => values.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SubTasks:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...values.map(
                        (subTaskVM) => ChangeNotifierProvider<SubTaskUpsertVM>.value(
                          value: subTaskVM,
                          child: Selector<SubTaskUpsertVM, ({bool isItLocked, bool isChanged})>(
                            selector: (_, vm) =>
                                (isItLocked: vm.isLocked, isChanged: vm.hasChanges),
                            builder: (_, values, __) => !values.isItLocked
                                ? Column(
                                    children: [
                                      ChangeNotifierProvider<SubTaskFormController>.value(
                                        value: subTaskVM.subTaskFormController,
                                        child: const SubTaskFormWidget(),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.cancel,
                                                  color: Colors.black,
                                                ),
                                                tooltip: 'cancel',
                                                onPressed: () {
                                                  subTaskVM.handleCancelation();
                                                },
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.restore,
                                                  color: Colors.blue,
                                                ),
                                                tooltip: 'Reset values',
                                                onPressed: values.isChanged
                                                    ? () => subTaskVM.reset()
                                                    : null,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.save,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: values.isChanged
                                                    ? () => context.read<TasksManagerBloc>().add(
                                                          TasksManagerEvent.updateSubTask(
                                                            subTask: subTaskVM
                                                                .subTaskFormController.toEntity,
                                                          ),
                                                        )
                                                    : null,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                ),
                                                tooltip: 'Delete SubTask',
                                                onPressed: () {
                                                  context.read<TasksManagerBloc>().add(
                                                        TasksManagerEvent.deleteSubTask(
                                                          subTaskId:
                                                              subTaskVM.subTaskFormController.id,
                                                        ),
                                                      );
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
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
                                    onLongPress: () {
                                      context.read<SubTasksManager>().subTaskVMs.forEach(
                                            (item) => item.handleCancelation(),
                                          );
                                      subTaskVM.setAsUpdatable();
                                    },
                                  ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
