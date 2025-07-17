import 'package:flutter/material.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_form.dart';

class SubTaskDisplayCard extends StatelessWidget {
  const SubTaskDisplayCard({required this.subTaskVM, super.key});

  final SubTaskUpsertVM subTaskVM;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
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
        onTap: () async => customShowModalBottomSheetDialog<SubTaskUpsertVM>(
            context, subTaskVM, const SubTaskUpsertFormWidget()),
      ),
    );
  }
}
