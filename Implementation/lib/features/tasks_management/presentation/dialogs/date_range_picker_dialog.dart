import 'package:flutter/material.dart' hide DatePickerMode;
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_picker_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';
import 'package:zamaan/presentation_shared/widgets/date_range_picker.dart';

Future<void> datePickerDialog({
  required BuildContext context,
  required DatePickerSelectionMode mode,
  List<DateRangeItemVm> existingDateRanges = const [],
  List<DateTime> existingSingleDates = const [],
  ValueChanged<DateRangeVm>? onUpsertDateRange,
  ValueChanged<DateTime>? onSingleDateSelected,
  List<DateRangeItemVm> exceptionDateRanges = const [],
  List<DateTime> singleexceptionDates = const [],
  DateTime? startDateConstraint,
  DateTime? endDateConstraint,
  DateTime? initialSingleDate,
  DateRangeVm? initialDateRange,
}) async =>
    showDialog(
        context: context,
        builder: (context) => ChangeNotifierProvider<DatePickerVm>.value(
              value: DatePickerVm(
                mode: mode,
                initialSingleDate: initialSingleDate,
                initialDateRange: initialDateRange,
                startDateConstraint: startDateConstraint,
                endDateConstraint: endDateConstraint,
                existingDateRanges: existingDateRanges,
                existingSingleDates: existingSingleDates,
                exceptionDateRanges: exceptionDateRanges,
                singleexceptionDates: singleexceptionDates,
              ),
              child: DateRangePickerWidget(
                onDateRangeSelected: onUpsertDateRange ?? (_) {},
                onSingleDateSelected: onSingleDateSelected ?? (_) {},
              ),
            ));
