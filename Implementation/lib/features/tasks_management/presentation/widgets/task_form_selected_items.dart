import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';

class TaskFormSelectedItems<Item, ItemsManagerBloc extends Bloc<dynamic, ItemsManagerState>,
    ItemsManagerState, VmsManager extends BaseVmsManager> extends StatelessWidget {
  const TaskFormSelectedItems({
    required this.selectedIds,
    required this.initialEvent,
    required this.chipBuilder,
    required this.dialogBuilder,
    required this.stateHandler,
    super.key,
  });

  final List<String> selectedIds;
  final dynamic initialEvent;
  final Widget Function(Item) chipBuilder;
  final Widget Function(VmsManager) dialogBuilder;
  final void Function(ItemsManagerState state, VmsManager manager, List<String> selectedIds,
      BuildContext context) stateHandler;

  @override
  Widget build(BuildContext context) {
    context.read<ItemsManagerBloc>().add(initialEvent);
    final manager = context.read<VmsManager>();

    return BlocListener<ItemsManagerBloc, ItemsManagerState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) => stateHandler(state, manager, selectedIds, context),
      child: SingleChildScrollView(
        child: Selector<VmsManager, bool>(
          selector: (_, manager) => manager.listUpdated,
          builder: (_, __, ___) {
            return Column(
              children: [
                Wrap(
                  children: [
                    ...manager.selectedItems.map<Widget>(
                      (item) => chipBuilder(item as Item),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ElevatedButton.icon(
                  label: Text(manager.selectedItems.isEmpty ? 'Select Items' : 'Add More Items'),
                  icon: const Icon(Icons.add),
                  onPressed: () async => showModalBottomSheet(
                    context: context,
                    builder: (_) => ChangeNotifierProvider<VmsManager>.value(
                      value: manager,
                      child: dialogBuilder(manager),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
