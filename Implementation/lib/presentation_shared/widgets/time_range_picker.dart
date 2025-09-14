import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_picker_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';

class TimeRangePickerWidget extends StatefulWidget {
  const TimeRangePickerWidget({
    required this.onTimeRangeSelected,
    super.key,
  });
  final void Function(TimeRangeVm vm) onTimeRangeSelected;

  @override
  State<TimeRangePickerWidget> createState() => _TimeRangePickerWidgetState();
}

class _TimeRangePickerWidgetState extends State<TimeRangePickerWidget> {
  late TimeRangePickerVm vm;

  @override
  void initState() {
    vm = context.read<TimeRangePickerVm>();
    super.initState();
  }

  Future<void> _selectTime([bool isStartTime = true]) async {
    late var isNotValid = false;
    late TimeOfDay? selectedTime;
    do {
      if (mounted) {
        selectedTime = await showTimePicker(
          context: context,
          initialTime: isStartTime ? vm.startTime : vm.endTime,
          builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: ElementaryColors.time,
              ),
            ),
            child: child!,
          ),
        );
      }

      if (selectedTime == null) return;

      // Check for conflictions
      await _checkConflictions(selectedTime, isStartTime);
      isNotValid = vm.validationError.isNotEmpty;
    } while (isNotValid);

    // Adjust end time if needed
    if (selectedTime.toMinuteAsInt >= vm.endTime.toMinuteAsInt) {
      vm.endTime = TimeOfDay(hour: selectedTime.hour + 1, minute: selectedTime.minute);
    }

    isStartTime ? vm.startTime = selectedTime : vm.endTime = selectedTime;
    if (isStartTime) await _selectTime(false);
  }

  Future<void> _checkConflictions(TimeOfDay selectedTime, [bool isNewStartTime = false]) async {
    vm.clearValidationErrors();

    // Conflicted with exception time ranges
    final exceptionConflitcts = isNewStartTime
        ? vm.getConflictedWithExcetpionsIdsForNewStart(selectedTime)
        : vm.getConflictedIdsWithExcetpionsForTimeRange(selectedTime);

    if (exceptionConflitcts.isNotEmpty) {
      vm.addValidationError(
          'This date is not available. It overlaps with one or more exception ranges defined in the schedule.');
      await _showConflictionError(
        conflictedIds: exceptionConflitcts,
        items: vm.exceptionTimeRanges,
        title: 'Conflict With Exceptions',
      );
    }

    // Overlapping with existing time ranges
    final overlappings = isNewStartTime
        ? vm.getOverlappedRangeIdsWithNewStart(selectedTime)
        : vm.getOverlappedRangeIdsForTimeRange(selectedTime);
    if (overlappings.isNotEmpty) {
      vm.addValidationError('This time range overlaps with an existing schedule.');
      await _showConflictionError(
        conflictedIds: overlappings,
        items: vm.existingTimeRanges,
        title: 'Time Overlap',
      );
    }
  }

  Future<void> _showConflictionError({
    required List<String> conflictedIds,
    required List<TimeRangeItemVm> items,
    required String title,
  }) async =>
      showDialog(
        context: context,
        builder: (context) {
          log('Exception conflicts IDs: $conflictedIds');
          log('Time range exception items: ${items.map((e) => e.id).toList()}');

          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...vm.validationError.map((message) => Text(message)),
                const SizedBox(height: 8),
                ...items.map((range) {
                  final start = range.startTime.toDayTimeString;
                  final end = range.endTime.toDayTimeString;
                  final isOverlapping = conflictedIds.any((id) => range.id == id);
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

  Future<void> _showInvalidEndTimeError() async => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid End Time'),
          content: const Text('End time must be after start time. Please select a valid end time.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConstraintDateTimeRangesManagerBloc, ConstraintDateTimeRangesManagerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: AlertDialog(
        title: const Text('Select Time Range'),
        content: Consumer<TimeRangePickerVm>(builder: (context, vm, _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Start Time'),
                subtitle: Text(vm.startTime.format(context)),
                trailing: const Icon(Icons.access_time),
                onTap: _selectTime,
              ),
              ListTile(
                title: const Text('End Time'),
                subtitle: Text(vm.endTime.format(context)),
                trailing: const Icon(Icons.access_time),
                onTap: () async => _selectTime(false),
              ),
              const SizedBox(height: 16),
              Text(
                'Duration: ${vm.calculateDuration}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              if (vm.validationError.isNotEmpty) ...[
                const SizedBox(height: 8),
                Column(
                  children: [
                    ...vm.validationError.map(
                      (errorMessage) => Text(
                        errorMessage,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Theme.of(context).colorScheme.error),
                      ),
                    )
                  ],
                ),
              ],
            ],
          );
        }),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (vm.isValidTimeRange) {
                widget.onTimeRangeSelected(vm.toTimeRangeVM);
                Navigator.of(context).pop();
              }
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
