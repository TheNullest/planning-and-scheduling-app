import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:zamaan/features/tasks_management/presentation/states/task_upsert_form_states.dart';

class TaskUpsertActionButtons extends StatelessWidget {
  const TaskUpsertActionButtons({
    required this.onUpdate,
    required this.onInsert,
    required this.onReset,
    required this.onDelete,
    super.key,
  });

  final void Function() onUpdate;
  final void Function() onInsert;
  final void Function() onReset;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskUpsertFormStates>(
      builder: (context, formStates, _) => Row(
        children: [
          // Upsert Button
          ElevatedButton.icon(
            icon: Icon(formStates.upsertButtonIcon),
            label: Text(formStates.upsertButtonTitle),
            onPressed: formStates.isUpsertButtonActive
                ? formStates.isNew
                    ? onInsert
                    : onUpdate
                : null,
          ),

          // Back Button
          ElevatedButton.icon(
            icon: Icon(formStates.backButtonIcon),
            label: Text(formStates.backButtonTitle),
            onPressed: () => Navigator.pop(context),
          ),

          // Reset Button
          ElevatedButton.icon(
            icon: Icon(formStates.resetButtonIcon),
            label: Text(formStates.resetButtonTitle),
            onPressed: formStates.isResetButtonActive ? onReset : null,
          ),

          // Delete Button
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            icon: Icon(formStates.deleteButtonIcon),
            label: Text(formStates.deleteButtonTitle),
            onPressed: formStates.isDeleteButtonActive
                ? () => showDialog<void>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Confirm Deletion'),
                        content: const Text('Are you sure you want to delete this task?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              onDelete();
                              Navigator.of(context)
                                ..pop() // Close the dialog
                                ..pop(); // Go back to the previous view
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    )
                : null,
          ),
        ],
      ),
    );
  }
}
