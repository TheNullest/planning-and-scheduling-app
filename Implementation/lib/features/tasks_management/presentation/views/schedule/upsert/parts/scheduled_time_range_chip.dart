import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_upsert_manager/schedule_upsert_manager_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/selectable_widget.dart';

/// A reusable chip that represents a single time range inside a group.
/// It reacts automatically to changes in [TimeRangeVm].
class ScheduledTimeRangeChip extends StatelessWidget {
  const ScheduledTimeRangeChip({
    required this.vm,
    required this.mainVm,
    required this.calculateParentSelectionState,
    super.key,
  });
  final ScheduleTimeRangeVm vm;
  final void Function() calculateParentSelectionState;
  final ScheduleUpsertManagerVm mainVm;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (mainVm.isSelectionMode.value) return;
        mainVm
          ..enableSelectionMode()
          ..toggleTimeRangeSelection(vm, true, calculateParentSelectionState);
      },
      onTap: () {},
      child: ChangeNotifierProvider<TimeRangeVm>.value(
        value: vm,
        child: Consumer<TimeRangeVm>(
          builder: (context, timeRange, _) => SelectableWidget(
            paddingLeft: 20,
            width: 170,
            height: 35,
            tristate: false,
            selectionModeListenable: mainVm.isSelectionMode,
            icon: Icons.timelapse_rounded,
            iconSize: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            selectedDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            isSelectedListenable: vm.isSelected,
            onToggleSelection: (isSelected) =>
                mainVm.toggleTimeRangeSelection(vm, isSelected, calculateParentSelectionState),
            child: Tooltip(
                message: timeRange.description ?? '',
                waitDuration: const Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(color: Colors.white, fontSize: 13),
                child: Text(timeRange.label)),
          ),
        ),
      ),
    );
  }
}
