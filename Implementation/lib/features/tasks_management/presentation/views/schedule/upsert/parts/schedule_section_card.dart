part of '../schedule_upsert_view.dart';

class ScheduleSectionCard extends StatelessWidget {
  const ScheduleSectionCard({
    required this.title,
    required this.icon,
    required this.items,
    required this.onAddPressed,
    required this.vm,
    required this.type,
    super.key,
  });

  final String title;
  final IconData icon;
  final List<ScheduleTimeGroupVm> items;
  final VoidCallback onAddPressed;
  final ScheduleUpsertManagerVm vm;
  final ScheduleType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline.withAlpha(0.1.asColorAlpha),
          ),
        ),
        child: GestureDetector(
          onLongPress: () {
            if (vm.isSelectionMode.value == false) {
              vm
                ..toggleSelectionMode()
                ..selectAllByType(type);
            }
          },
          child: ExpansionTile(
            leading: SelectableWidget(
              selectionModeListenable: vm.isSelectionMode,
              icon: icon,
              isSelectedListenable: vm.getSelectionNotifier(type),
              onToggleSelection: (newValue) => newValue != null && newValue
                  ? vm.selectAllByType(type)
                  : vm.deselectAllByType(type),
            ),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text('${items.length} groups'),
            initiallyExpanded: items.isNotEmpty,
            children: [
              if (items.isEmpty) _EmptyStateWidget(message: 'No $title added yet'),
              ...items.map((group) => ScheduledTimeRangeGroupTile(
                    timeGroupVm: group,
                    mainVm: vm,
                  )),
              const Divider(height: 1),
              ListTile(
                leading: const Icon(Icons.add_outlined),
                title: Text(
                  'Add $title',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: onAddPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyStateWidget extends StatelessWidget {
  const _EmptyStateWidget({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).hintColor,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
