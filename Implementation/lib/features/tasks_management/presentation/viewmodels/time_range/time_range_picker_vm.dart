import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';

class TimeRangePickerVm extends ChangeNotifier {
  TimeRangePickerVm({
    required this.initialTimeRange,
    required this.existingTimeRanges,
    required this.exceptionTimeRanges,
  }) {
    _initialTimeRange();
  }

  final List<String> _validationError = [];
  List<String> get validationError => _validationError;
  void addValidationError(String value) {
    _validationError.add(value);
    notifyListeners();
  }

  void clearValidationErrors() {
    _validationError.clear();
    notifyListeners();
  }

  final TimeRangeVm? initialTimeRange;
  final List<TimeRangeItemVm> existingTimeRanges;
  final List<TimeRangeItemVm> exceptionTimeRanges;

  late TimeOfDay _startTime = const TimeOfDay(hour: 8, minute: 0);
  TimeOfDay get startTime => _startTime;
  set startTime(TimeOfDay value) {
    _startTime = value;
    notifyListeners();
  }

  late TimeOfDay _endTime = const TimeOfDay(hour: 9, minute: 0);
  TimeOfDay get endTime => _endTime;

  set endTime(TimeOfDay value) {
    _endTime = value;
    notifyListeners();
  }

// Find the best initial time range based on existing time ranges
  void _initialTimeRange() {
    if (initialTimeRange != null) {
      startTime = initialTimeRange!.startTime;
      endTime = initialTimeRange!.endTime;
      return;
    }

    // If no existing ranges, use default
    if (existingTimeRanges.isEmpty) {
      return;
    }

    // Sort existing ranges by start time
    existingTimeRanges
        .sort((a, b) => a.startTime.toMinuteAsInt.compareTo(b.startTime.toMinuteAsInt));

    // Check for gaps between existing ranges
    for (var i = 0; i < existingTimeRanges.length - 1; i++) {
      final currentStart = existingTimeRanges[i].startTime;
      final currentEnd = existingTimeRanges[i].endTime;
      final nextStart = existingTimeRanges[i + 1].startTime;

      if (currentStart.hour < 8 && nextStart.hour > 8) {
        startTime = const TimeOfDay(hour: 8, minute: 0);
        endTime = const TimeOfDay(hour: 9, minute: 0);
        return;
      }

      final gap = nextStart.toMinuteAsInt - currentEnd.toMinuteAsInt;

      // If there's a gap of at least 30 minutes, use it
      if (gap >= 30) {
        startTime = TimeOfDay(
          hour: currentEnd.hour,
          minute: currentEnd.minute,
        );

        // Add 30 minutes to the end time for a reasonable initial range
        final endMinutes = currentEnd.toMinuteAsInt + (gap > 60 ? 60 : gap);
        endTime = TimeOfDay(
          hour: endMinutes ~/ 60,
          minute: endMinutes % 60,
        );
        return;
      }
    }

    // Check if there's space after the last range
    final lastRange = existingTimeRanges.last;
    final lastEnd = lastRange.endTime;
    const dayEnd = TimeOfDay(hour: 23, minute: 59);

    if (dayEnd.toMinuteAsInt - lastEnd.toMinuteAsInt >= 30) {
      startTime = TimeOfDay(
        hour: lastEnd.hour,
        minute: lastEnd.minute,
      );

      // Add minutes to the end time
      final gap = dayEnd.toMinuteAsInt - lastEnd.toMinuteAsInt;

      final endMinutes = lastEnd.toMinuteAsInt + (gap <= 60 ? gap : 60);
      endTime = TimeOfDay(
        hour: endMinutes ~/ 60,
        minute: endMinutes % 60,
      );
    }
  }

  String get calculateDuration {
    final durationMinutes = _endTime.toMinuteAsInt - _startTime.toMinuteAsInt;

    final hours = durationMinutes ~/ 60;
    final minutes = durationMinutes % 60;

    if (hours > 0) {
      return '$hours hour${hours > 1 ? 's' : ''} '
          '${minutes > 0 ? '$minutes minute${minutes > 1 ? 's' : ''}' : ''}';
    } else {
      return '$minutes minute${minutes > 1 ? 's' : ''}';
    }
  }

  List<String> getOverlappedRangeIdsWithNewStart(TimeOfDay newStartTime) =>
      _conflictionIdsWithNewStart(newStartTime, existingTimeRanges);

  List<String> getConflictedWithExcetpionsIdsForNewStart(TimeOfDay newStartTime) =>
      _conflictionIdsWithNewStart(newStartTime, exceptionTimeRanges);

  List<String> _conflictionIdsWithNewStart(TimeOfDay newStartTime, List<TimeRangeItemVm> items) {
    final selectedInMinuts = newStartTime.toMinuteAsInt;
    final overlappedIds = <String>[];

    for (final range in items) {
      // Skip comparison with the range we're editing (if applicable)
      if (initialTimeRange?.id != null && initialTimeRange!.id == range.id) {
        continue;
      }
      final existingStart = range.startTime.toMinuteAsInt;
      final existingEnd = range.endTime.toMinuteAsInt;

      // Check if the new range overlaps with this existing range
      // There are four possible overlap scenarios:

      // 1.Selected time within existing range
      //    New:         |----|
      //    Existing:  |----|
      if (selectedInMinuts >= existingStart && selectedInMinuts < existingEnd) {
        overlappedIds.add(range.id);
        continue;
      }
    }

    return overlappedIds;
  }

  List<String> getOverlappedRangeIdsForTimeRange(TimeOfDay newEndTime) =>
      _getConflictionsWithSelectedRange(newEndTime, existingTimeRanges);
  List<String> getConflictedIdsWithExcetpionsForTimeRange(TimeOfDay newEndTime) =>
      _getConflictionsWithSelectedRange(newEndTime, exceptionTimeRanges);

  /// items can be timeRangeExcetpions or existiongTimeRanges
  List<String> _getConflictionsWithSelectedRange(
      TimeOfDay newEndTime, List<TimeRangeItemVm> items) {
    final newStart = _startTime.toMinuteAsInt;
    final newEnd = newEndTime.toMinuteAsInt;
    final overlappedIds = <String>[];

    for (final range in items) {
      // Skip comparison with the range we're editing (if applicable)
      if (initialTimeRange?.id != null && initialTimeRange!.id == range.id) {
        continue;
      }

      final existingStart = range.startTime.toMinuteAsInt;
      final existingEnd = range.endTime.toMinuteAsInt;

      // 2. New range ends within existing range
      //    New:    |----|
      //    Existing: |----|
      if (newEnd > existingStart && newEnd <= existingEnd) {
        overlappedIds.add(range.id);
        continue;
      }

      // 3. New range completely contains existing range
      //    New:  |--------|
      //    Existing:  |--|
      if (newStart <= existingStart && newEnd >= existingEnd) {
        overlappedIds.add(range.id);
        continue;
      }

      // 4. Existing range completely contains new range
      //    New:         |--|
      //    Existing: |--------|
      if (existingStart <= newStart && existingEnd >= newEnd) {
        overlappedIds.add(range.id);
        continue;
      }
    }

    return overlappedIds;
  }

  bool get isValidTimeRange {
    _validationError.clear();
    // Check if start time is before end time
    if (_startTime.toMinuteAsInt >= _endTime.toMinuteAsInt) {
      addValidationError('End time must be after start time');
    }

    // Check for overlaps with existing ranges
    if (getOverlappedRangeIdsForTimeRange(endTime).isNotEmpty) {
      addValidationError('This time range overlaps with an existing schedule');
    }

    // Check for overlaps with existing ranges
    if (getConflictedIdsWithExcetpionsForTimeRange(endTime).isNotEmpty) {
      addValidationError('This time range overlaps with an existing schedule');
    }

    return _validationError.isEmpty;
  }

  TimeRangeVm get toTimeRangeVM =>
      initialTimeRange?.copyWith(startTime: _startTime, endTime: _endTime) ??
      TimeRangeVm(
        startTime: startTime,
        endTime: endTime,
      );
}
