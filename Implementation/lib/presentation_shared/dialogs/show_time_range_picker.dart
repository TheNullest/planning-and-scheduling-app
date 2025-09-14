import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_picker_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/widgets/time_range_picker.dart';

Future<void> showTimeRangePicker({
  required BuildContext context,
  required void Function(TimeRangeVm vm) onTimeRangeSelected,
  required List<TimeRangeItemVm> existingTimeRanges,
  List<TimeRangeItemVm> exceptionTimeRanges = const [],
  TimeRangeVm? initialTimeRange,
  String title = 'Select Time Range',
  String startLabel = 'Start Time',
  String endLabel = 'End Time',
}) async =>
    showDialog(
      context: context,
      builder: (context) => ChangeNotifierProvider.value(
        value: TimeRangePickerVm(
          initialTimeRange: initialTimeRange,
          existingTimeRanges: existingTimeRanges,
          exceptionTimeRanges: exceptionTimeRanges,
        ),
        child: TimeRangePickerWidget(
          onTimeRangeSelected: onTimeRangeSelected,
        ),
      ),
    );
