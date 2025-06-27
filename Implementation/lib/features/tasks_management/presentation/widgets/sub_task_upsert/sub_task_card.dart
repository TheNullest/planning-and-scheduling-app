import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/sub_task_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';

class SubTaskDisplayCard extends StatelessWidget {
  const SubTaskDisplayCard({required this.subTaskVM, super.key});

  final SubTaskUpsertVM subTaskVM;

  @override
  Widget build(BuildContext context) {
    final tasksManagerBloc = context.read<TasksManagerBloc>();
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(subTaskVM.title.isNotEmpty ? subTaskVM.title : 'Title'),
        subtitle: Text(subTaskVM.description),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Status: ${subTaskVM.status.name}', style: const TextStyle(fontSize: 12)),
            Text('Priority: ${subTaskVM.priority.name}', style: const TextStyle(fontSize: 12)),
          ],
        ),
        onTap: () => _openBottomSheet(context, tasksManagerBloc),
      ),
    );
  }

  Future<void> _openBottomSheet(BuildContext context, TasksManagerBloc tasksManagerBloc) async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return ChangeNotifierProvider.value(
          value: subTaskVM,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Edit SubTask',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                16.sizedBoxHeight,
                const SubTaskUpsertDialog(),
              ],
            ),
          ),
        );
      },
    );
  }
}
