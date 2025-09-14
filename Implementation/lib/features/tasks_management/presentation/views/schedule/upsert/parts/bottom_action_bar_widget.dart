part of '../schedule_upsert_view.dart';

class BottomActionBarWidget extends StatelessWidget {
  const BottomActionBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ScheduleUpsertManagerVm>();
    final dayTimeBloc = context.watch<ScheduledDayTimesManagerBloc>();
    final occurrenceBloc = context.watch<ScheduledOccurrencesManagerBloc>();
    return Selector<ScheduleUpsertManagerVm,
        ({bool isGlobalSettingsEnabled, bool isSelectionMode, int selectedCount})>(
      selector: (_, vm) => (
        isGlobalSettingsEnabled: vm.isGlobalSettingsEnabled,
        isSelectionMode: vm.isSelectionMode.value,
        selectedCount: vm.selectedItemsCount //vm.selectedItemsCount,
      ),
      builder: (context, values, _) {
        final shouldShowBar = values.isGlobalSettingsEnabled || values.isSelectionMode;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: shouldShowBar ? 70 : 0,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).colorScheme.outline.withAlpha(0.1.asColorAlpha),
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(0.1.asColorAlpha),
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              children: [
                // Selection Count
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${values.selectedCount} selected',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const Spacer(),

                Selector<ScheduleUpsertManagerVm, int>(
                  selector: (_, vm) => vm.selectedItemsCount,
                  builder: (_, selectedItemsCount, __) {
                    // Submit Button (when global settings is enabled)
                    if (values.isGlobalSettingsEnabled) {
                      return FilledButton.icon(
                        onPressed: selectedItemsCount > 0 ? _applyGlobalOptions : null,
                        icon: const Icon(Icons.check_outlined, size: 18),
                        label: const Text('Apply Settings'),
                      );
                    }

                    // Delete Button (when multi-select mode)
                    if (values.isSelectionMode && !values.isGlobalSettingsEnabled) {
                      return FilledButton.icon(
                        onPressed: selectedItemsCount > 0
                            ? () {
                                dayTimeBloc.add(ScheduledDayTimesManagerEvent.deleteBatch(
                                    vm.selectedRecurringDayTimeIds));

                                occurrenceBloc.add(ScheduledOccurrencesManagerEvent.deleteBatch(
                                    vm.selectedFixedDateTimeIds));
                              }
                            : null,
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        icon: const Icon(Icons.delete_outlined, size: 18),
                        label: const Text('Delete'),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                const SizedBox(width: 12),

                // Cancel Button
                OutlinedButton(
                  onPressed: () => vm
                    ..disableSelectionMode()
                    ..isGlobalSettingsEnabled = false,
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _applyGlobalOptions() {}
}
