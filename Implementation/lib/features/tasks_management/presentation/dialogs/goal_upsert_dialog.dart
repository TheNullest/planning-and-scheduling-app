import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/repetition_type.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/goals/goals_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/goal_upsert_vm.dart';

void showGoalUpsertDialog(BuildContext context, GoalUpsertVM goal) => showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) =>
          ChangeNotifierProvider<GoalUpsertVM>.value(value: goal, child: const _GoalUpsert()),
    ).whenComplete(
      () => goal.resetValues(),
    );

class _GoalUpsert extends StatefulWidget {
  const _GoalUpsert();

  @override
  State<_GoalUpsert> createState() => _GoalUpsertState();
}

class _GoalUpsertState extends State<_GoalUpsert> {
  final _descriptionCtrl = TextEditingController();
  final Map<RepetitionType, TextEditingController> _targetControllers = {};
  final List<RepetitionType> _allTargetTypes = RepetitionType.values;
  GoalsManagerBloc get goalsManagerBloc => context.read<GoalsManagerBloc>();
  GoalUpsertVM get goalVm => context.read<GoalUpsertVM>();

  @override
  void initState() {
    super.initState();
    _descriptionCtrl.text = goalVm.description;

    // Initialize controllers for existing targets
    goalVm.goalTargets.forEach((type, value) {
      _targetControllers[type] = TextEditingController(text: value?.toString() ?? '');
    });
  }

  @override
  void dispose() {
    _descriptionCtrl.dispose();
    for (final c in _targetControllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _addTarget(RepetitionType type) {
    setState(() {
      goalVm.addTarget(type, 0);
      _targetControllers[type] = TextEditingController(text: '0.0');
    });
  }

  void _removeTarget(RepetitionType type) {
    setState(() {
      goalVm.removeTarget(type);
      _targetControllers.remove(type)?.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Sort the keys according to the desired order
    final sortedTargetKeys = goalVm.goalTargets.keys.toList()
      ..sort((a, b) => a.index.compareTo(b.index));

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(goalVm.viewStates.widgetTitle, style: const TextStyle(fontSize: 18)),
            16.sizedBoxHeight,
            TextField(
              controller: _descriptionCtrl,
              decoration: const InputDecoration(labelText: 'Description'),
              onChanged: (value) => goalVm.description = value,
            ),
            16.sizedBoxHeight,

            /// Selected target inputs (sorted)
            ...sortedTargetKeys.map((type) {
              final label = type.name[0].toUpperCase() + type.name.substring(1);
              final controller = _targetControllers[type]!;
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(labelText: '$label Target'),
                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
                        ],
                        onChanged: (val) {
                          final parsed = double.tryParse(val);
                          if (parsed != null) {
                            goalVm.addTarget(type, parsed);
                          }
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () => _removeTarget(type),
                    ),
                  ],
                ),
              );
            }),

            /// Add target button
            Align(
              alignment: Alignment.centerLeft,
              child: PopupMenuButton<RepetitionType>(
                onSelected: _addTarget,
                itemBuilder: (context) {
                  final remaining =
                      _allTargetTypes.where((t) => !goalVm.goalTargets.keys.contains(t));
                  // Sort remaining types as well
                  final sortedRemaining = remaining.toList()
                    ..sort((a, b) => a.index.compareTo(b.index));
                  return sortedRemaining
                      .map((type) => PopupMenuItem(
                            value: type,
                            child: Text(type.name[0].toUpperCase() + type.name.substring(1)),
                          ))
                      .toList();
                },
                child: TextButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Target'),
                  onPressed: null,
                ),
              ),
            ),

            20.sizedBoxHeight,
            Selector<GoalUpsertVM, bool>(
                selector: (_, vm) => vm.viewStates.isSaveButtonActive,
                builder: (_, isActive, __) {
                  return ElevatedButton(
                    onPressed: isActive
                        ? () {
                            goalVm.viewStates.isItNew
                                ? goalsManagerBloc.add(GoalsManagerEvent.create(goalVm.toEntity))
                                : goalsManagerBloc.add(GoalsManagerEvent.update(goalVm.toEntity));
                          }
                        : null,
                    child: const Text('Save'),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
