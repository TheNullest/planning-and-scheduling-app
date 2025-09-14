part of '../schedule_upsert_view.dart';

class GlobalScheduleOptionsWidget extends StatelessWidget {
  const GlobalScheduleOptionsWidget(
    this.descriptionController, {
    super.key,
  });
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    final vm = context.read<ScheduleUpsertManagerVm>();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline.withAlpha(0.2.asColorAlpha),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.settings_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text(
                'Global Settings',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('Apply changes to multiple schedules'),
              trailing: Selector<ScheduleUpsertManagerVm, bool>(
                selector: (_, vm) => vm.isGlobalSettingsEnabled,
                builder: (context, isGlobalSettingsEnabled, _) {
                  return Switch(
                    value: vm.isGlobalSettingsEnabled,
                    onChanged: (value) {
                      vm.isGlobalSettingsEnabled = value;
                      if (!value) {
                        descriptionController.clear();
                        vm.resetGlobalOptions();
                      }
                    },
                  );
                },
              ),
            ),
            Selector<ScheduleUpsertManagerVm, bool>(
              selector: (_, vm) => vm.isGlobalSettingsEnabled,
              builder: (context, isEnabled, _) {
                return AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Visibility(
                    visible: isEnabled,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: descriptionController,
                            onChanged: (description) => vm.globalDescription = description,
                            maxLines: 5,
                            minLines: 1,
                            //TODO[FIXME]: Should define maxLength
                            decoration: const InputDecoration(
                              labelText: 'Global Description',
                              hintText: 'Apply to selected schedules',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: RepeatCountWidget(
                                  initialValue: vm.globalRepeatCount,
                                  onChanged: (value) => vm.globalRepeatCount = value,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                flex: 3,
                                child: DropdownButtonFormField<ScheduledTimeMode>(
                                  value: vm.globalTimeMode,
                                  decoration: const InputDecoration(
                                    labelText: 'Time Mode',
                                    border: OutlineInputBorder(),
                                  ),
                                  items: ScheduledTimeMode.values
                                      .map(
                                        (item) => DropdownMenuItem(
                                          value: item,
                                          child: Text(item.name),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (selectedTimeMode) =>
                                      vm.globalTimeMode = selectedTimeMode!,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
