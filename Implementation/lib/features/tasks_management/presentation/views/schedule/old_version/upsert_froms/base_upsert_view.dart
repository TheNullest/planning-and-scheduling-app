import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/dialogs/show_time_range_picker.dart';
import 'package:zamaan/presentation_shared/models/upsert_view_states.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/dropdown_button.dart';
import 'package:zamaan/presentation_shared/widgets/list_item.dart';
import 'package:zamaan/presentation_shared/widgets/section.dart';

class BaseScheduleUpsertView<VM> extends StatelessWidget {
  const BaseScheduleUpsertView(
      {required this.isMultiSelect,
      required this.onDescriptionChanged,
      required this.description,
      required this.timeModeSelector,
      required this.scheduledTimesListSelector,
      required this.onSoftRemoveScheduledTimeChanged,
      required this.onEditScheduledTime,
      required this.onTimeModeChanged,
      required this.addNewTimeRange,
      required this.scheduledTimesList,
      required this.exceptionTimeRanges,
      required this.onUpdate,
      required this.onSubmit,
      required this.onDelete,
      required this.onReset,
      required this.viewState,
      required this.isNewItem,
      required this.shouldResetInputs,
      super.key,
      this.newSection,
      this.option});

  final bool isMultiSelect;
  final void Function(String) onDescriptionChanged;
  final String description;
  final bool Function(BuildContext, VM) shouldResetInputs;
  final ScheduledTimeMode Function(BuildContext, VM) timeModeSelector;
  final List<ScheduleTimeRangeVm> Function(BuildContext, VM) scheduledTimesListSelector;
  final bool Function(BuildContext, VM) isNewItem;
  final void Function(ScheduleTimeRangeVm) onSoftRemoveScheduledTimeChanged;
  final void Function(TimeRangeVm) onEditScheduledTime;
  final void Function(ScheduledTimeMode) onTimeModeChanged;
  final void Function(TimeRangeVm) addNewTimeRange;
  final List<ScheduleTimeRangeVm> scheduledTimesList;
  final List<TimeRangeItemVm> exceptionTimeRanges;
  final void Function() onUpdate;
  final void Function() onSubmit;
  final void Function() onDelete;
  final void Function() onReset;
  final UpsertViewStates viewState;
  final Widget? newSection;
  final Widget? option; // ScheduleTimeMode

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWidget(
          headerIcon: Icons.description,
          headerText: 'Default Description',
          child: Selector<VM, bool>(
              selector: shouldResetInputs,
              builder: (context, _, __) => _TextController(
                    text: description,
                    onTextChanged: (text) => onDescriptionChanged(text),
                  )),
        ),
        newSection ?? const SizedBox.shrink(),
        SectionWidget(
            headerText: 'Options',
            child: Wrap(
              children: [
                20.sizedBoxWidth,
                Row(
                  children: [
                    option ?? const SizedBox.shrink(),
                    8.sizedBoxWidth,
                    CustomDropdownButtonWidget<VM, ScheduledTimeMode>(
                      label: 'Time Mode',
                      selector: timeModeSelector,
                      items: ScheduledTimeMode.values.toList(),
                      itemBuilder: (timeMode) => Text(timeMode.name),
                      onChanged: (timeMode) => onTimeModeChanged(timeMode!),
                    ),
                  ],
                )
              ],
            )),
        SectionWidget(
          headerText: 'Add defualt scheduled times',
          headerColor: ElementaryColors.time,
          headerIcon: Icons.access_time,
          actionButton: () => showTimeRangePicker(
              context: context,
              onTimeRangeSelected: (timeRangeVm) => addNewTimeRange(timeRangeVm),
              existingTimeRanges: TimeRangeItemVm.fromTimeRangeVms(scheduledTimesList),
              exceptionTimeRanges: exceptionTimeRanges),
          child: Selector<VM, List<ScheduleTimeRangeVm>>(
              selector: scheduledTimesListSelector,
              builder: (_, scheduledTimes, __) {
                return Column(
                  children: [
                    if (scheduledTimes.isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          'No defualt scheduled times added',
                          style:
                              TextStyle(color: Colors.grey.shade500, fontStyle: FontStyle.italic),
                        ),
                      )
                    else
                      ...scheduledTimes.map((scheduledTime) => ValueListenableProvider<bool>.value(
                            value: scheduledTime.isSoftRemoved,
                            child: Consumer<bool>(builder: (context, isSoftRemoved, _) {
                              return ListItemWidget(
                                text:
                                    '${scheduledTime.startTime.toDayTimeString} - ${scheduledTime.endTime.toDayTimeString}',
                                isSoftDeleted: isSoftRemoved,
                                onDelete: () => onSoftRemoveScheduledTimeChanged(scheduledTime),
                                onEdit: () async => showTimeRangePicker(
                                  context: context,
                                  existingTimeRanges:
                                      TimeRangeItemVm.fromTimeRangeVms(scheduledTimesList),
                                  initialTimeRange: scheduledTime,
                                  onTimeRangeSelected: onEditScheduledTime,
                                ),
                              );
                            }),
                          )),
                    const SizedBox(height: 16),
                  ],
                );
              }),
        ),
        Selector<VM, bool>(
          selector: isNewItem,
          builder: (_, isItNew, __) => ActionButtonsWidget(
              onUpdate: () => onUpdate(),
              onSubmit: () => onSubmit(),
              onReset: onReset,
              onDelete: onDelete,
              isNewItem: isItNew,
              viewStates: viewState),
        ),
      ],
    );
  }
}

class _TextController extends StatefulWidget {
  const _TextController({
    required this.text,
    required this.onTextChanged,
  });

  final String text;
  final void Function(String) onTextChanged;
  @override
  State<_TextController> createState() => __TextControllerState();
}

class __TextControllerState extends State<_TextController> {
  final TextEditingController _descriptionController = TextEditingController();
  @override
  void initState() {
    _descriptionController.text = widget.text;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant _TextController oldWidget) {
    _descriptionController.text = widget.text;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: _descriptionController,
        decoration: InputDecoration(
          hintText: 'Add defualt description...',
          filled: true,
          fillColor: Colors.grey[50],
        ),
        style: const TextStyle(
          color: Colors.black87, // <-- darker text color
        ),
        maxLines: 2,
        onChanged: (value) => widget.onTextChanged(value),
      );
}
