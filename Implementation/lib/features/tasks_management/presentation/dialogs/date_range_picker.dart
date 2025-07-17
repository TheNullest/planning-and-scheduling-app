import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';

Future<void> dateRangePickerDialog({
  required BuildContext context,
  required String parentId,
  required ValueChanged<DateRangeEntity> onAdd,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  final now = DateTime.now();

  // Show the native date-range picker.
  final pickedRange = await showDateRangePicker(
    context: context,
    firstDate: firstDate ?? DateTime(now.year - 5, now.month, now.day),
    lastDate: lastDate ?? DateTime(now.year + 5, now.month, now.day),
  );

  // If the user canceled or the widget unmounted, do nothing.
  if (pickedRange == null || !context.mounted) return;

  // Build a new DateRangeEntity and notify the caller.
  final newRange = DateRangeEntity.fromDates(
    userId: context.currentUserId,
    parentId: parentId,
    start: pickedRange.start,
    end: pickedRange.end,
  );

  onAdd(newRange);
}
