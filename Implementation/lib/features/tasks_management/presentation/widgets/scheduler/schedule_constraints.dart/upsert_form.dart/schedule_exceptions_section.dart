import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/date_range_picker.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/scheduler/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/scheduler/schedule_constraints.dart/schedule_constraints_card.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/week_days_picker.dart';

class ScheduleExceptionSectionWidget extends StatelessWidget {
  const ScheduleExceptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constraints = context.read<ScheduleConstraintsVm>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Selector<ScheduleConstraintsVm, List<TimeRangeEntity>>(
            selector: (_, vm) => List.unmodifiable(vm.timeRangeExceptions),
            builder: (_, timeRanges, ___) {
              return _buildExceptionSection(
                'Time Exceptions',
                ConstraintColors.time,
                Icons.access_time,
                timeRanges,
                (timeException) =>
                    '${timeException.start.toDayTimeString} - ${timeException.end.toDayTimeString}',
                () => _addTimeException(context, constraints),
                (item) => constraints.removeFromTimeRangeExceptions(item),
              );
            }),
        Selector<ScheduleConstraintsVm, List<DateTime>>(
            selector: (_, vm) => List.unmodifiable(vm.dateExceptions),
            builder: (_, dates, ___) {
              return _buildExceptionSection(
                'Date Exceptions',
                ConstraintColors.dates,
                Icons.calendar_today,
                dates,
                (d) => d.toDateString,
                () => _addDateExceptions(context, constraints),
                (item) => constraints.removeFromDateExceptions(item),
              );
            }),
        Selector<ScheduleConstraintsVm, List<DateRangeEntity>>(
            selector: (_, vm) => List.unmodifiable(vm.dateRangeExceptions),
            builder: (_, dateRanges, ___) {
              return _buildExceptionSection(
                'Date Range Exceptions',
                ConstraintColors.dateRanges,
                Icons.calendar_today,
                dateRanges,
                (dateRange) => '${dateRange.start!.toDateString} - ${dateRange.end!.toDateString}',
                () => _addDateRangeExceptions(context, constraints),
                (item) => constraints.removeFromDateRangeExceptions(item),
              );
            }),
        Selector<ScheduleConstraintsVm, List<WeekDay>>(
            selector: (_, vm) => List.unmodifiable(vm.weekDayExceptions),
            builder: (_, weekDays, ___) {
              return _buildExceptionSection(
                'Weekday Exceptions',
                ConstraintColors.weekdays,
                Icons.calendar_view_week,
                weekDays,
                (w) => w.name,
                () => _addWeekdayExceptions(context, constraints),
                (item) => constraints.removeFromWeekDayExceptions(item),
              );
            }),
        Selector<ScheduleConstraintsVm, List<int>>(
            selector: (_, vm) => List.unmodifiable(vm.monthDayExceptions),
            builder: (_, monthDays, ___) {
              return _buildExceptionSection(
                'Month Day Exceptions',
                ConstraintColors.monthDays,
                Icons.calendar_view_month,
                monthDays,
                (d) => '$d${_getOrdinalSuffix(d)}',
                () => _addMonthDayExceptions(context, constraints),
                (item) => constraints.removeFromMonthDayExceptions(item),
              );
            }),
      ],
    );
  }

  String _getOrdinalSuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  Widget _buildExceptionSection<T>(
    String title,
    Color color,
    IconData icon,
    List<T> items,
    String Function(T) formatter,
    VoidCallback onAdd,
    void Function(T) onRemove,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 20, color: color),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, color: color),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.add_circle, color: color),
              onPressed: onAdd,
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
          ...items.map((item) => _buildExceptionItem(
                formatter(item),
                color,
                () => onRemove(item),
              )),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildExceptionItem(String text, Color color, VoidCallback onDelete) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color.withAlpha(17),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withAlpha(50)),
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 24,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500, color: color),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, size: 20, color: color.withAlpha(175)),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }

  Future<void> _addTimeException(BuildContext context, ScheduleConstraintsVm constraints) async {
    final start = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 8, minute: 0),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: ConstraintColors.time,
          ),
        ),
        child: child!,
      ),
    );
    if (!context.mounted || start == null) return;

    final end = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: start.hour + 1 > 23 ? 23 : start.hour + 1, minute: start.minute),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: ConstraintColors.time,
          ),
        ),
        child: child!,
      ),
    );

    if (context.mounted && end != null) {
      constraints.addToTimeRangeExceptions(TimeRangeEntity.setNewTimeRange(
          start: start.toInt(),
          end: end.toInt(),
          userId: context.currentUserId,
          parentId: constraints.taskId));
    }
  }

  FutureVoid _addDateExceptions(BuildContext context, ScheduleConstraintsVm constraints) async {
    final tempSelectedDates = [...constraints.dateExceptions];

    await customShowModalBottomSheetDialog(context, constraints,
        StatefulBuilder(builder: (context, setState) {
      return Column(
        children: [
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(1989),
            lastDay: DateTime(2199),
            selectedDayPredicate: tempSelectedDates.contains,
            onDaySelected: (selectedDay, _) {
              setState(() {
                if (tempSelectedDates.contains(selectedDay)) {
                  tempSelectedDates.remove(selectedDay);
                } else {
                  tempSelectedDates.add(selectedDay);
                }
              });
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Apply changes to your ViewModel
              constraints.modifyDateExceptions(tempSelectedDates);
              Navigator.of(context).pop();
            },
            child: const Text('Confirm'),
          ),
          const SizedBox(height: 16),
        ],
      );
    }));
  }

  FutureVoid _addDateRangeExceptions(
      BuildContext context, ScheduleConstraintsVm constraints) async {
    await dateRangePickerDialog(
      context: context,
      onAdd: (dateRange) => constraints.addToDateRangeExceptions(dateRange),
      parentId: constraints.id!,
      firstDate: constraints.startAt,
      lastDate: constraints.endAt,
    );
  }

  void _addWeekdayExceptions(BuildContext context, ScheduleConstraintsVm constraints) {
    customShowModalBottomSheetDialog(
        context,
        constraints,
        WeekDaysPicker<WeekDay>(
          onChanged: (weekDays) => constraints.modifyWeekDayExceptions(weekDays.toList()),
          initialSelected: Set.from(constraints.weekDayExceptions),
          values: Set.from(WeekDay.values),
          itemStringFormat: (item) => item.name,
          title: 'Select Weekdays',
        ));
  }

  void _addMonthDayExceptions(BuildContext context, ScheduleConstraintsVm constraints) {
    customShowModalBottomSheetDialog(
        context,
        constraints,
        WeekDaysPicker<int>(
          onChanged: (monthDays) => constraints.modifyMonthDayExceptions(monthDays.toList()),
          initialSelected: Set.from(constraints.monthDayExceptions),
          values: Set.from(List.generate(31, (index) => index + 1)),
          itemStringFormat: (item) => item.toString(),
          title: 'Select Month Days',
        ));
  }
}
