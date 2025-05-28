import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert/sub_task_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/dropdown_button.dart';

class SubTaskFormWidget extends StatefulWidget {
  const SubTaskFormWidget({super.key});

  @override
  State<SubTaskFormWidget> createState() => _SubTaskFormWidgetState();
}

class _SubTaskFormWidgetState extends State<SubTaskFormWidget> {
  late final SubTaskFormController _subTaskController;
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  @override
  void didChangeDependencies() {
    _subTaskController = context.read<SubTaskFormController>();
    _titleController = TextEditingController(text: _subTaskController.title);
    _descriptionController = TextEditingController(text: _subTaskController.description);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
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
                  child: Selector<SubTaskFormController, SubTaskFormController>(
                    selector: (_, controller) => controller,
                    builder: (context, controller, _) {
                      return TextFormField(
                        controller: _titleController,
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
                  child: Selector<SubTaskFormController, SubTaskFormController>(
                    selector: (_, controller) => controller,
                    builder: (context, controller, _) {
                      return TextFormField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) => controller.isValid ? 'Description is required' : null,
                        onChanged: (value) => controller.description = value,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // Status & Priority Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      // Task Status Dropdown
                      CustomDropdownButtonWidget<SubTaskFormController, TaskStatus>(
                        label: 'Status',
                        selector: (_, controller) => controller.status,
                        items: TaskStatus.values,
                        itemBuilder: (status) => Text(status.name),
                        onChanged: (status) => _subTaskController.status = status!,
                      ),

                      const SizedBox(width: 16),

                      // Priority Dropdown
                      CustomDropdownButtonWidget<SubTaskFormController, Priority>(
                        label: 'Priority',
                        selector: (_, controller) => controller.priority,
                        items: Priority.values,
                        itemBuilder: (priority) => Text(priority.name),
                        onChanged: (priority) => _subTaskController.priority = priority!,
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
