import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/date_range_picker_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_picker_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/dialogs/show_time_range_picker.dart';
import 'package:zamaan/presentation_shared/models/mixinn/list_item_state_mixin.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/days_picker.dart';
import 'package:zamaan/presentation_shared/widgets/list_item.dart';

/// Shows all scheduling exceptions (forbidden days/times).
class ScheduleExceptionSectionWidget extends StatelessWidget {
  const ScheduleExceptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.read<ScheduleConstraintsVm>();

    return BlocListener<ConstraintDateTimeRangesManagerBloc, ConstraintDateTimeRangesManagerState>(
      listener: (context, state) => state.maybeWhen(
          dateRangesBatchCreated: () => vm.updateOriginalValuesForexceptionDateRanges(),
          dateRangesBatchUpdated: () => vm.updateOriginalValuesForexceptionDateRanges(),
          dateRangesBatchDeleted: (_) => vm.updateOriginalValuesForexceptionDateRanges(),
          timeRangesBatchCreated: () => vm.updateOriginalValuesForexceptionTimeRanges(),
          timeRangesBatchUpdated: () => vm.updateOriginalValuesForexceptionTimeRanges(),
          timeRangesBatchDeleted: (_) => vm.updateOriginalValuesForexceptionTimeRanges(),
          orElse: () => null),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ⏱ Time exceptions
          Selector<ScheduleConstraintsVm, ({List<TimeRangeVm> timeRanges, int softRemovedsCount})>(
            selector: (_, vm) => (
              timeRanges: vm.exceptionTimeRanges,
              softRemovedsCount:
                  vm.exceptionTimeRanges.where((item) => item.isSoftRemoved.value).length
            ),
            builder: (_, values, __) {
              return _buildExceptionSection<TimeRangeVm>(
                title: 'Time Exceptions',
                color: ElementaryColors.time,
                icon: Icons.access_time,
                items: values.timeRanges,
                formatter: (t) => '${t.startTime.toDayTimeString} – ${t.endTime.toDayTimeString}',
                onUpsert: (selected) async => showTimeRangePicker(
                  context: context,
                  initialTimeRange: selected,
                  existingTimeRanges:
                      TimeRangeItemVm.fromTimeRangeVms(values.timeRanges, selected?.id),
                  onTimeRangeSelected: (selectedTime) {
                    selected != null
                        ? vm.editTimeRangeException(selectedTime)
                        : vm.addTimeRangeException(selectedTime);
                  },
                ),
                onRemove: (item) => vm.removeTimeRangeException(item),
              );
            },
          ),

          // 📅 Date exceptions
          Selector<ScheduleConstraintsVm, List<DateTime>>(
            selector: (_, vm) => vm.exceptionDates,
            builder: (_, dates, __) {
              return _buildExceptionSection<DateTime>(
                title: 'Exception Dates',
                color: ElementaryColors.dates,
                icon: Icons.calendar_today,
                items: dates,
                formatter: (d) => d.toDateString,
                onUpsert: (_) => _addexceptionDates(context, vm),
                onRemove: vm.removeFromexceptionDates,
                editable: false,
              );
            },
          ),

          // 🗓 Date-range exceptions
          Selector<ScheduleConstraintsVm, ({List<DateRangeVm> dateRanges, int softRemovedsCount})>(
            selector: (_, vm) => (
              dateRanges: vm.exceptionDateRanges,
              softRemovedsCount:
                  vm.exceptionDateRanges.where((item) => item.isSoftRemoved.value).length
            ),
            builder: (_, values, __) {
              return _buildExceptionSection<DateRangeVm>(
                title: 'Exception Date Ranges',
                color: ElementaryColors.dateRanges,
                icon: Icons.view_day,
                items: values.dateRanges,
                formatter: (r) => '${r.startDate!.toDateString} – ${r.endDate!.toDateString}',
                onUpsert: (selectedItem) => _upsertexceptionDateRanges(context, vm, selectedItem),
                onRemove: (item) => vm.removeFromexceptionDateRanges(item),
              );
            },
          ),

          // 🗓 Weekday exceptions
          Selector<ScheduleConstraintsVm, List<WeekDay>>(
            selector: (_, vm) => vm.exceptionWeekDays,
            builder: (_, weekDays, __) {
              return _buildExceptionSection<WeekDay>(
                title: 'Exception Weekdays',
                color: ElementaryColors.weekdays,
                icon: Icons.block, // 🚫 Forbidden icon
                items: weekDays,
                formatter: (w) => w.name,
                onUpsert: (_) => _addexceptionWeekDays(context, vm),
                onRemove: vm.removeFromexceptionWeekDays,
                editable: false,
              );
            },
          ),

          // 🔢 Month-day exceptions
          Selector<ScheduleConstraintsVm, List<int>>(
            selector: (_, vm) => vm.exceptionMonthDays,
            builder: (_, monthDays, __) {
              return _buildExceptionSection<int>(
                title: 'Exception Month Days',
                color: ElementaryColors.monthDays,
                icon: Icons.calendar_view_month,
                items: monthDays,
                formatter: (d) => d.getMonthDayWithOrdinalSuffix,
                onUpsert: (_) => _addexceptionMonthDays(context, vm),
                onRemove: vm.removeFromexceptionMonthDays,
                editable: false,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Re-usable builder for each exception section.
  Widget _buildExceptionSection<T>({
    required String title,
    required Color color,
    required IconData icon,
    required List<T> items,
    required String Function(T) formatter,
    required void Function(T?) onUpsert,
    required void Function(T) onRemove,
    bool editable = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: color),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, color: color, fontSize: 16),
              ),
              const Spacer(),
              IconButton(
                icon: Icon(Icons.add_circle, color: color),
                onPressed: () => onUpsert(null),
                tooltip: 'Add $title',
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (items.isEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                'No $title added',
                style: TextStyle(color: Colors.grey.shade500, fontStyle: FontStyle.italic),
              ),
            )
          else
            ...items.map(
              (item) => ListItemWidget(
                text: formatter(item),
                color: color,
                isSoftDeleted: item is ListItemStateMixin && item.isSoftRemoved.value,
                onDelete: () => onRemove(item),
                onEdit: editable ? () => onUpsert(item) : null,
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _addexceptionDates(BuildContext context, ScheduleConstraintsVm vm) async {
    final temp = [...vm.exceptionDates];

    await customShowModalBottomSheetDialog(
      context,
      vm,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            children: [
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime(1989),
                lastDay: DateTime(2199),
                selectedDayPredicate: temp.contains,
                onDaySelected: (day, _) {
                  setState(() {
                    temp.contains(day) ? temp.remove(day) : temp.add(day);
                  });
                },
              ),
              16.sizedBoxHeight,
              ElevatedButton(
                onPressed: () {
                  vm.modifyexceptionDates(temp);
                  Navigator.of(context).pop();
                },
                child: const Text('Confirm'),
              ),
              16.sizedBoxHeight,
            ],
          );
        },
      ),
      headerIcon: vm.viewStates.cancelButtonIcon(vm.isNewItem.value),
      header: vm.viewStates.widgetTitle(vm.isNewItem.value),
    );
  }

  Future<void> _upsertexceptionDateRanges(
      BuildContext context, ScheduleConstraintsVm constraints, DateRangeVm? selected) async {
    await datePickerDialog(
      mode: DatePickerSelectionMode.range,
      context: context,
      initialDateRange: selected,
      onUpsertDateRange: selected == null
          ? constraints.addDateRangeException
          : constraints.editexceptionDateRanges,
      startDateConstraint: constraints.startDate,
      endDateConstraint: constraints.endDate,
      existingDateRanges: DateRangeItemVm.fromVmList(constraints.exceptionDateRanges),
    );
  }

  void _addexceptionWeekDays(BuildContext context, ScheduleConstraintsVm constraints) {
    customShowModalBottomSheetDialog(
      context,
      constraints,
      DaysPicker<WeekDay>(
        onChangedMulti: (w) => constraints.addexceptionWeekDays(w.toList()),
        initialMultiSelected: Set.from(constraints.exceptionWeekDays),
        initialSelected: constraints.exceptionWeekDays.firstOrNull,
      ),
      headerIcon: constraints.viewStates.cancelButtonIcon(constraints.isNewItem.value),
      header: constraints.viewStates.widgetTitle(constraints.isNewItem.value),
    );
  }

  void _addexceptionMonthDays(BuildContext context, ScheduleConstraintsVm constraints) {
    customShowModalBottomSheetDialog(
      context,
      constraints,
      DaysPicker<int>(
        onChangedMulti: (m) => constraints.modifyexceptionMonthDays(m.toList()),
        initialMultiSelected: Set.from(constraints.exceptionMonthDays),
        dayType: DayType.monthDay,
      ),
      headerIcon: constraints.viewStates.cancelButtonIcon(constraints.isNewItem.value),
      header: constraints.viewStates.widgetTitle(constraints.isNewItem.value),
    );
  }
}
