import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/dropdown_button.dart';

class SubTaskFormWidget extends StatefulWidget {
  const SubTaskFormWidget({super.key});

  @override
  State<SubTaskFormWidget> createState() => _SubTaskFormWidgetState();
}

class _SubTaskFormWidgetState extends State<SubTaskFormWidget> {
  late final SubTaskUpsertVM subTaskVM;
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void didChangeDependencies() {
    subTaskVM = context.read<SubTaskUpsertVM>();
    titleController = TextEditingController(text: subTaskVM.title);
    descriptionController = TextEditingController(text: subTaskVM.description);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 550),
      child: Row(
        children: [
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title Field
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Selector<SubTaskUpsertVM, SubTaskUpsertVM>(
                    selector: (_, controller) => controller,
                    builder: (context, controller, _) {
                      return TextFormField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) => controller.isValid ? 'Title is required' : null,
                        onChanged: (value) => controller.title = value,
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
                        selector: (_, controller) => controller.status,
                        items: TaskStatus.values,
                        itemBuilder: (status) => Text(status.name),
                        onChanged: (status) => subTaskVM.status = status!,
                      ),

                      const SizedBox(width: 16),

                      // Priority Dropdown
                      CustomDropdownButtonWidget<SubTaskUpsertVM, Priority>(
                        label: 'Priority',
                        selector: (_, controller) => controller.priority,
                        items: Priority.values,
                        itemBuilder: (priority) => Text(priority.name),
                        onChanged: (priority) => subTaskVM.priority = priority!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
