import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/presentation_shared/models/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class ActionButtonsWidget<VM extends BaseViewModel> extends StatelessWidget {
  const ActionButtonsWidget(
      {required this.onUpdate,
      required this.onSubmit,
      required this.onReset,
      required this.onDelete,
      required this.viewStates,
      super.key});

  final void Function() onUpdate;
  final void Function() onSubmit;
  final void Function() onReset;
  final void Function() onDelete;
  final UpsertViewStates viewStates;

  static const _actionButtonsPaddings = EdgeInsets.symmetric(vertical: 5, horizontal: 10);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UpsertViewStates>.value(
      value: viewStates,
      builder: (context, _) {
        return Wrap(
          children: [
            // Upsert Button
            Padding(
              padding: _actionButtonsPaddings,
              child: Selector<UpsertViewStates, ({bool isItNew, bool isActive})>(
                selector: (context, states) =>
                    (isItNew: states.isItNew, isActive: states.isSaveButtonActive),
                builder: (_, states, ___) {
                  return ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text('Save'),
                    onPressed: states.isActive
                        ? states.isItNew
                            ? onSubmit
                            : onUpdate
                        : null,
                  );
                },
              ),
            ),

            // Reset Button
            Padding(
              padding: _actionButtonsPaddings,
              child: Selector<UpsertViewStates, bool>(
                  selector: (context, states) => states.isResetButtonActive,
                  builder: (_, isActive, __) {
                    return ElevatedButton.icon(
                      icon: Icon(viewStates.resetButtonIcon),
                      label: Text(viewStates.resetButtonTitle),
                      onPressed: isActive ? onReset : null,
                    );
                  }),
            ),

            // Delete Button
            Padding(
              padding: _actionButtonsPaddings,
              child: Selector<UpsertViewStates, bool>(
                  selector: (context, states) => states.isDeleteButtonActive,
                  builder: (_, isActive, __) {
                    return ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      icon: Icon(viewStates.deleteButtonIcon),
                      label: Text(viewStates.deleteButtonTitle),
                      onPressed: isActive
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
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              )
                          : null,
                    );
                  }),
            ),
          ],
        );
      },
    );
  }
}
