import 'package:flutter/material.dart' hide DatePickerMode;
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_picker_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';

// TODO[Refactor]: Upgrade this DateRangePickerWidget to support *multi-single-date* mode and editing of those dates.
//
// First step: adapt the widget’s API (constructor parameters, callbacks and state)
// so it can accept and return a List<DateTime> instead of just one date.
//
// Objectives of this refactor:
//  • Let the user select or edit several individual dates in a single session.
//  • Display all currently selected dates (with visual cues for conflicts/exceptions).
//  • Integrate with the ViewModel’s new multi-date API for validation and persistence.
//  • Preserve existing range-mode behaviour so current consumers are not broken.
class DateRangePickerWidget extends StatefulWidget {
  const DateRangePickerWidget({
    required this.onDateRangeSelected,
    required this.onSingleDateSelected,
    super.key,
  });

  final void Function(DateRangeVm vm) onDateRangeSelected;
  final void Function(DateTime date) onSingleDateSelected;

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  late DatePickerVm vm;

  @override
  void initState() {
    super.initState();
    vm = context.read<DatePickerVm>();
    // If initialDateRange is null, auto-open picker
    if (vm.initialDateRange == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _selectSingleAndStartDate();
      });
    }
  }

  Future<void> _selectSingleAndStartDate() async => _showDatePicker(
        setPickedDate: (date) => vm.startDate = date,
        initialDate: vm.startDate,
        selectEndDate:
            vm.mode == DatePickerSelectionMode.range ? () async => _selectEndDate() : null,
      );

  Future<void> _selectEndDate() async => _showDatePicker(
        setPickedDate: (date) => vm.endDate = date,
        initialDate: vm.endDate,
        firstDate: vm.startDate,
      );

  Future<void> _showDatePicker({
    required void Function(DateTime) setPickedDate,
    DateTime? initialDate,
    Future<void> Function()? selectEndDate,
    DateTime? firstDate,
  }) async {
    late var isNotValid = false;
    late DateTime? selectedDate;
    do {
      if (mounted) {
        selectedDate = await showDatePicker(
          context: context,
          initialDate: initialDate ?? DateTime.now(),
          firstDate: firstDate ?? vm.firstDate,
          lastDate: vm.lastDate,
          builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.blue,
              ),
            ),
            child: child!,
          ),
        );
      }

      if (selectedDate == null) return;

      // Check for if the last date is selected as start date
      if (selectEndDate != null && vm.mode == DatePickerSelectionMode.range) {
        isNotValid = await _checkError(selectedDate);
      }
      // Check for conflicts
      final hasAnyConflict = await _checkConflicts(
          selectedDate, selectEndDate == null && vm.mode == DatePickerSelectionMode.range);
      isNotValid = isNotValid || hasAnyConflict;
    } while (isNotValid);

    setPickedDate(selectedDate);

    if (selectEndDate != null && vm.mode == DatePickerSelectionMode.range) {
      await selectEndDate();
    }
  }

  Future<bool> _checkError(DateTime selectedDate) async {
    final hasError = vm.isStartDateOnLastDate(selectedDate);

    if (hasError) await _showError('Error');

    return hasError;
  }

  Future<void> _showError(String title) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(vm.validationError.first),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ));

  Future<bool> _checkConflicts(DateTime selectedDate, bool isEndDate) async {
    var hasAnyConflict = false;

    final exceptionConflicts = vm.getExceptionIds(selectedDate);
    if (exceptionConflicts.isNotEmpty) {
      await _showConflictError(
        itemsIds: exceptionConflicts,
        items: vm.exceptionDateRanges,
        title: 'Conflict With Exceptions',
        message:
            'This date is not available. It overlaps with one or more exception ranges defined in the schedule.',
      );
      hasAnyConflict = true;
    }

    final overlappings = vm.getOverlappedRangeIds(selectedDate, isEndDate);
    if (overlappings.isNotEmpty) {
      await _showConflictError(
        itemsIds: overlappings,
        items: vm.existingDateRanges,
        title: 'Date Range Overlap',
        message:
            'This date range overlaps with existing constraints. Please select a different range.',
      );
      hasAnyConflict = true;
    }

    return hasAnyConflict;
  }

  Future<void> _showConflictError({
    required List<String> itemsIds,
    required List<DateRangeItemVm> items,
    required String title,
    required String message,
  }) async =>
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message),
                const SizedBox(height: 8),
                ...items.map((range) {
                  final start = range.startDate.toDateString;
                  final end = range.endDate.toDateString;
                  final isOverlapping = itemsIds.contains(range.id);
                  final color = isOverlapping ? Colors.red : Colors.green;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      '• $start - $end',
                      style: TextStyle(color: color),
                    ),
                  );
                }),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: vm,
      child: Consumer<DatePickerVm>(
        builder: (context, vm, child) {
          return AlertDialog(
            title: Text(
              vm.mode == DatePickerSelectionMode.range ? 'Select Date Range' : 'Select Date',
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (vm.mode == DatePickerSelectionMode.range) ...[
                  ListTile(
                    title: const Text('Start Date'),
                    subtitle: Text(vm.startDate.toDateString),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: _selectSingleAndStartDate,
                  ),
                  ListTile(
                    title: const Text('End Date'),
                    subtitle: Text(vm.endDate.toDateString),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: _selectEndDate,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Duration: ${vm.calculateDuration}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ] else ...[
                  ListTile(
                    title: const Text('Date'),
                    subtitle: Text(vm.startDate.toDateString),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: _selectSingleAndStartDate,
                  ),
                ],
                if (vm.validationError.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Column(
                    children: vm.validationError
                        .map(
                          (errorMessage) => Text(
                            errorMessage,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Theme.of(context).colorScheme.error),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (vm.isValidDateRange) {
                    if (vm.mode == DatePickerSelectionMode.range) {
                      widget.onDateRangeSelected(vm.toDateRangeVm());
                    } else {
                      widget.onSingleDateSelected(vm.startDate);
                    }
                    Navigator.of(context).pop();
                  }
                },
                child: Text(
                  vm.mode == DatePickerSelectionMode.range ? 'Confirm Range' : 'Confirm Date',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
