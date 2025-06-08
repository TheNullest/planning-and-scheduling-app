import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/dropdown_button.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/sub_task_upsert/sub_task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_task_form/sub_task_form_controller.dart';

class SubTaskFormWidget extends StatefulWidget {
  const SubTaskFormWidget({super.key});

  @override
  State<SubTaskFormWidget> createState() => _SubTaskFormWidgetState();
}

class _SubTaskFormWidgetState extends State<SubTaskFormWidget> {
  late final SubTaskFormController _subTaskFormController;
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  @override
  void didChangeDependencies() {
    _subTaskFormController = context.read<SubTaskUpsertVM>().vmFormController;
    _titleController = TextEditingController(text: _subTaskFormController.title);
    _descriptionController = TextEditingController(text: _subTaskFormController.description);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleController.text = _subTaskFormController.title;
      _descriptionController.text = _subTaskFormController.description ?? '';
      _subTaskFormController.shouldResetInputs = false;
    });
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
                  child: Selector<SubTaskUpsertVM, bool>(
                    selector: (_, vm) => vm.vmFormController.shouldResetInputs,
                    builder: (context, reset, _) {
                      if (reset) resetTextControllers();
                      return TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            _subTaskFormController.isValid ? 'Title is required' : null,
                        onChanged: (value) => _subTaskFormController.title = value,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // Description Field
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        _subTaskFormController.isValid ? 'Description is required' : null,
                    onChanged: (value) => _subTaskFormController.description = value,
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
                        selector: (_, vm) => vm.vmFormController.status,
                        items: TaskStatus.values,
                        itemBuilder: (status) => Text(status.name),
                        onChanged: (status) => _subTaskFormController.status = status!,
                      ),

                      const SizedBox(width: 16),

                      // Priority Dropdown
                      CustomDropdownButtonWidget<SubTaskUpsertVM, Priority>(
                        label: 'Priority',
                        selector: (_, vm) => vm.vmFormController.priority,
                        items: Priority.values,
                        itemBuilder: (priority) => Text(priority.name),
                        onChanged: (priority) => _subTaskFormController.priority = priority!,
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
