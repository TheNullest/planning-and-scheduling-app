import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/goals/goals_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/goal_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/goal/goal_upsert_from.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({required this.refId, required this.refType, super.key});

  final String? refId;
  final ReferenceType refType;

  @override
  Widget build(BuildContext context) {
    if (refId == null) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('First define the task to set a goal.'),
        ),
      );
    }
    final goalVm = GoalUpsertVM(
      userId: context.currentUserId,
      refType: refType,
      refId: refId!,
    );
    return BlocListener<GoalsManagerBloc, GoalsManagerState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) => state.maybeWhen(
              loadedByRefIds: (goals) {
                if (goals.isNotEmpty) goalVm.initialize(goals.first);
                return null;
              },
              created: (goal) => goalVm.onEntityCreated(),
              updated: (goal) => goalVm.onEntityUpdated(goal),
              orElse: () => {},
            ),
        child: ChangeNotifierProvider<GoalUpsertVM>.value(
          value: goalVm,
          child: Selector<GoalUpsertVM, ({bool isItNew, bool isItModified})>(
              selector: (_, vm) => (isItNew: vm.isNewItem.value, isItModified: vm.canReset.value),
              builder: (_, states, __) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  color:
                      states.isItNew ? Colors.grey[100] : const Color.fromARGB(255, 38, 164, 253),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => customShowModalBottomSheetDialog<GoalUpsertVM>(
                        context, goalVm, const GoalUpsertFormWidget()),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: states.isItNew
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.flag_outlined, color: Colors.blueGrey),
                                const SizedBox(width: 8),
                                Text(
                                  'Goal not set yet for this task.',
                                  style: TextStyle(
                                    color: Colors.blueGrey[700],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          : Text(goalVm.description),
                    ),
                  ),
                );
              }),
        ));
  }
}
