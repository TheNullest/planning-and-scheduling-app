import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_upsert_manager/schedule_upsert_manager_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/views/schedule/upsert/parts/scheduled_time_range_chip.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/selectable_widget.dart';

class ScheduledTimeRangeGroupTile extends StatelessWidget {
  const ScheduledTimeRangeGroupTile({required this.mainVm, required this.timeGroupVm, super.key});
  final ScheduleTimeGroupVm timeGroupVm;
  final ScheduleUpsertManagerVm mainVm;
  @override
  Widget build(BuildContext context) {
    final parentSelectionState = _parentSelectionState();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        leading: Selector<ScheduleUpsertManagerVm, bool?>(
            selector: (_, vm) => parentSelectionState.value,
            builder: (context, isSelected, _) {
              if (isSelected != null) _selectionProcess(isSelected);
              return ChangeNotifierProvider<ScheduleTimeGroupVm>.value(
                value: timeGroupVm,
                child: SelectableWidget(
                  paddingLeft: 10,
                  selectionModeListenable: mainVm.isSelectionMode,
                  icon: Icons.view_timeline,
                  isSelectedListenable: timeGroupVm.isSelected,
                  onToggleSelection: _selectionProcess,
                ),
              );
            }),
        title: Text(
          timeGroupVm.label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        onTap: _onTap,
        onLongPress: _onLongPress,
        trailing: mainVm.isSelectionMode.value
            ? null
            : IconButton(
                icon: const Icon(Icons.edit_outlined),
                onPressed: () {}, // timeGroupVm.openEditor,
                tooltip: 'Edit group',
              ),
      ),

      // 🕒 Time Range Chips
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Wrap(spacing: 8, runSpacing: 6, children: [
          ...timeGroupVm.timeRanges.map((timeRange) {
            return ScheduledTimeRangeChip(
              vm: timeRange,
              mainVm: mainVm,
              calculateParentSelectionState: () =>
                  mainVm.recalculateSelectedSectionFlags(timeGroupVm),
            );
          }),
          // ➕ Add New Time Range Button
          _addNewTimeRangeButton(context),
        ]),
      ),

      const Divider(height: 1),
    ]);
  }

  ValueNotifier<bool?> _parentSelectionState() {
    switch (timeGroupVm.scheduleType) {
      case ScheduleType.fixedDate:
        return mainVm.isFixedDateSchedulesSelected;
      case ScheduleType.recurringWeekDays:
        return mainVm.isWeeklySchedulesSelected;
      case ScheduleType.recurringMonthDays:
        return mainVm.isMonthlySchedulesSelected;
      case ScheduleType.recurringIntervals:
        return ValueNotifier(false);
    }
  }

  void _selectionProcess(bool? isSelected) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mainVm.toggleTimeGroupSelection(timeGroupVm, isSelected);
    });
  }

  void _onTap() {
    if (mainVm.isSelectionMode.value) {
      // Toggle selection in selection mode
      final currentlySelected = timeGroupVm.isSelected.value ?? false;
      _selectionProcess(!currentlySelected);
    }
  }

  void _onLongPress() {
    if (!mainVm.isSelectionMode.value) {
      mainVm.enableSelectionMode();
    }
    _onTap();
  }

  // 🧩 Handler for adding new time range
  void _handleAddTimeRange(BuildContext context) {}

  Widget _addNewTimeRangeButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: Icon(Icons.add, size: 18, color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
