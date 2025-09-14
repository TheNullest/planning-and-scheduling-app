import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';

//TODO[Refactor]: Enhance all the code(such as validation, error handling, ...) and its documentation, remove unnecessary stuff.

/// The available modes for the date picker:
/// * [range] – user selects a start and end date.
/// * [single] – user selects a single calendar date.
enum DatePickerSelectionMode { range, single }

/// ViewModel that drives a date-picker widget supporting:
/// * selecting a single date or a date range,
/// * enforcing constraints and exception rules,
/// * and detecting conflicts with pre-existing dates/ranges.
///
/// It exposes validated start/end dates and emits change notifications
/// when its state updates.
class DatePickerVm extends ChangeNotifier {
  /// Creates a new [DatePickerVm].
  ///
  /// * [mode] determines whether the user is choosing a single date
  ///   or a date range.
  /// * [existingDateRanges] and [existingSingleDates] are the
  ///   already-booked dates that must not be selected again.
  /// * [exceptionDateRanges] and [singleexceptionDates] specify
  ///   additional blocked dates or ranges.
  /// * [startDateConstraint] and [endDateConstraint] optionally clamp
  ///   the selectable calendar to a custom window
  ///   (defaults: one year back and two years forward).
  /// * [initialDateRange] / [initialSingleDate] pre-fill the picker
  ///   when editing an existing selection.
  DatePickerVm({
    required this.mode,
    required this.existingDateRanges,
    required this.existingSingleDates,
    required this.initialDateRange,
    required this.initialSingleDate,
    DateTime? startDateConstraint,
    DateTime? endDateConstraint,
    this.exceptionDateRanges = const [],
    this.singleexceptionDates = const [],
  })  : firstDate = startDateConstraint ?? DateTime.now().subtract(const Duration(days: 365)),
        lastDate = endDateConstraint ?? DateTime.now().add(const Duration(days: 365 * 2)) {
    _initValidDateRange();
  }

  /// Picker mode (single date or date range).
  final DatePickerSelectionMode mode;

  /// Earliest selectable date after applying optional constraints.
  final DateTime firstDate;

  /// Latest selectable date after applying optional constraints.
  final DateTime lastDate;

  /// Date ranges that are explicitly blocked from selection.
  final List<DateRangeItemVm> exceptionDateRanges;

  /// Individual single dates that are explicitly blocked.
  final List<DateTime> singleexceptionDates;

  /// Pre-selected single date when editing in [DatePickerSelectionMode.single].
  final DateTime? initialSingleDate;

  /// Pre-selected date range when editing in [DatePickerSelectionMode.range].
  final DateRangeVm? initialDateRange;

  /// Ranges that are already reserved and must not overlap
  /// with the user’s selection.
  final List<DateRangeItemVm> existingDateRanges;

  /// Single dates that are already reserved and must not be selected again.
  final List<DateTime> existingSingleDates;

  /// Current list of validation errors.
  final List<String> _validationError = [];

  /// Public, read-only view of [_validationError].
  List<String> get validationError => _validationError;

  /// Determines and sets an initial valid selection.
  ///
  /// * For single-date mode, uses [initialSingleDate] if provided.
  /// * For range mode, uses [initialDateRange] if provided;
  ///   otherwise finds the first two consecutive days that
  ///   don’t conflict with existing ranges or exceptions.
  ///
  /// Adds an error message and calls [notifyListeners] if
  /// no valid slot can be found.
  void _initValidDateRange() {
    if (mode == DatePickerSelectionMode.single && initialSingleDate != null) {
      startDate = initialSingleDate!;
    } else if (initialDateRange != null) {
      _startDate = initialDateRange!.startDate!;
      _endDate = initialDateRange!.endDate!;
    } else {
      var candidate = DateTime.now();
      if (candidate.isBefore(firstDate)) candidate = firstDate;

      while (candidate.isBefore(lastDate)) {
        final inException = getExceptionIds(candidate);
        final overlapsExisting = getOverlappedRangeIds(candidate);

        final nextDay = candidate.add(const Duration(days: 1));
        final nextDayInException = getExceptionIds(nextDay);
        final overlapsExistingForNextDay = getOverlappedRangeIds(nextDay);

        if (inException.isEmpty &&
            overlapsExisting.isEmpty &&
            nextDayInException.isEmpty &&
            overlapsExistingForNextDay.isEmpty) {
          startDate = candidate;
          return;
        }

        // jump past the blocking range to reduce iterations
        final exceptionEndDate = nextDayInException.isNotEmpty
            ? exceptionDateRanges.singleWhere((item) => item.id == nextDayInException.first).endDate
            : DateTime.now();
        final overlapsExistingEndDate = overlapsExistingForNextDay.isNotEmpty
            ? existingDateRanges
                .singleWhere((item) => overlapsExistingForNextDay.contains(item.id))
                .endDate
            : DateTime.now();

        candidate = exceptionEndDate.isAfter(overlapsExistingEndDate)
            ? exceptionEndDate.add(const Duration(days: 1))
            : overlapsExistingEndDate.add(const Duration(days: 1));
      }

      _validationError
        ..clear()
        ..add('No available date range satisfies the constraints, existing ranges, or exceptions.');
      notifyListeners();
    }
  }

  void _findValidEndDate() {
    var candidate = initialDateRange?.endDate ?? startDate.add(const Duration(days: 1));
    while (candidate.isBefore(lastDate)) {
      final inException = getExceptionIds(candidate, true);
      final overlapsExisting = getOverlappedRangeIds(candidate, true);

      if (inException.isEmpty && overlapsExisting.isEmpty) {
        endDate = candidate;
        return;
      }
      candidate = candidate.add(const Duration(days: 1));
    }
  }

  /// Add a custom validation error and notify listeners.
  void addValidationError(String value) {
    _validationError.add(value);
    notifyListeners();
  }

  /// Clear all validation errors and notify listeners.
  void clearValidationErrors() {
    _validationError.clear();
    notifyListeners();
  }

  /// Start date of the selected range or the single picked date.
  late DateTime _startDate;
  DateTime get startDate => _startDate;
  set startDate(DateTime value) {
    _startDate = value;
    if (mode == DatePickerSelectionMode.range) _findValidEndDate();
    notifyListeners();
  }

  /// End date of the selected range.
  /// Not used in single-date mode.
  late DateTime _endDate = _startDate.add(const Duration(days: 1));
  DateTime get endDate => _endDate;
  set endDate(DateTime value) {
    _endDate = value;
    notifyListeners();
  }

  // ---------------------------------------------------------------------------
  // Multiple single-date selection (future enhancement)
  // ---------------------------------------------------------------------------

  /// Temporary storage for multiple single-date selections.
  final List<DateTime> _selectedSingleDatesList = [];

  /// Read-only view of the currently selected single dates.
  List<DateTime> get selectedSingleDatesList => List.unmodifiable(_selectedSingleDatesList);

  /// Add a date to the list of selected single dates and notify listeners.
  void addToSelectedSingleDates(DateTime selectedSingleDates) {
    _selectedSingleDatesList.add(selectedSingleDates);
    notifyListeners();
  }

  /// Remove a date from the list of selected single dates and notify listeners.
  void removeFromSelectedSingleDates(DateTime selectedSingleDates) {
    _selectedSingleDatesList.remove(selectedSingleDates);
    notifyListeners();
  }

  /// Human-readable duration between [startDate] and [endDate].
  /// Returns `"1 day"` for single-date mode.
  String get calculateDuration {
    if (mode == DatePickerSelectionMode.single) return '1 day';

    final diff = _endDate.difference(_startDate).inDays;
    final months = diff ~/ 30;
    final days = diff % 30;

    if (months > 0) {
      return '$months month${months > 1 ? 's' : ''} '
          '${days > 0 ? '$days day${days > 1 ? 's' : ''}' : ''}';
    } else {
      return '$days day${days > 1 ? 's' : ''}';
    }
  }

  /// IDs of existing ranges that overlap the given [date].
  ///
  /// If [isEndDate] is true, also checks that the entire
  /// `[startDate, date]` range does not intersect existing ranges.
  List<String> getOverlappedRangeIds(DateTime date, [bool isEndDate = false]) =>
      _getConflictedRangeIds(date, existingDateRanges, isEndDate);

  /// IDs of exception ranges that contain [date].
  List<String> getExceptionIds(DateTime date, [bool isEndDate = false]) =>
      _getConflictedRangeIds(date, exceptionDateRanges, isEndDate);

  List<String> _getConflictedRangeIds(
      DateTime date, List<DateRangeItemVm> reviewedDateRanges, bool isEndDate) {
    final conflictedIds = <String>[];

    for (final range in reviewedDateRanges) {
      if (initialDateRange?.id != null && initialDateRange!.id == range.id) continue;

      final reviewedStart = range.startDate;
      final reviewedEnd = range.endDate;

      if (!date.isBefore(reviewedStart) && !date.isAfter(reviewedEnd)) {
        conflictedIds.add(range.id);
        continue;
      }

      // If checking for end date, verify if the selected range overlaps the reviewed range.
      if (isEndDate) {
        // Check if the start date is before the reviewed range,
        // and the end date falls inside the reviewed range.
        final isEndDateInsideReviewedRange = startDate.isBefore(reviewedStart) &&
            (date.isAfter(reviewedStart) && date.isBefore(reviewedEnd));

        // Check if the selected range fully contains the reviewed range.
        final isSelectedRangeCoversReviewedRange =
            startDate.isBefore(reviewedStart) && date.isAfter(reviewedEnd);

        // If either condition is true, add the reviewed range's id to conflicts.
        if (isEndDateInsideReviewedRange || isSelectedRangeCoversReviewedRange) {
          conflictedIds.add(range.id);
        }
      }
    }

    return conflictedIds;
  }

  /// Returns all already-booked single dates that match [selectedDate].
  List<DateTime> getOverlappedSingleDates(DateTime selectedDate) =>
      existingSingleDates.where((date) => date.isAtSameDate(selectedDate)).toList();

  /// True if [selectedStartDate] equals [lastDate].
  /// Adds a validation error if so.
  bool isStartDateOnLastDate(DateTime selectedStartDate) {
    _validationError.clear();

    if (selectedStartDate.isAtSameMomentAs(lastDate)) {
      _validationError.add('Start date cannot be the last allowed date');
    }
    return _validationError.isNotEmpty;
  }

  /// Validates the current selection against:
  /// * start/end ordering,
  /// * date constraints,
  /// * existing ranges,
  /// * exception ranges.
  ///
  /// Returns true if there are no conflicts. Populates [validationError]
  /// and notifies listeners when issues are found.
  bool get isValidDateRange {
    clearValidationErrors();

    if (mode == DatePickerSelectionMode.single) {
      final exceptionConflicts = getExceptionIds(_startDate);
      final overlapConflicts = getOverlappedRangeIds(_startDate);

      if (exceptionConflicts.isNotEmpty) {
        _validationError.add('Selected date conflicts with exception ranges');
      }

      if (overlapConflicts.isNotEmpty) {
        _validationError.add('Selected date overlaps with existing ranges');
      }

      if (_startDate.isBefore(firstDate)) {
        _validationError.add('Date cannot be before ${firstDate.toDateString}');
      }

      if (_startDate.isAfter(lastDate)) {
        _validationError.add('Date cannot be after ${lastDate.toDateString}');
      }

      return _validationError.isEmpty;
    } else {
      if (_startDate.isAfter(_endDate)) {
        _validationError.add('End date must be after start date');
      }

      if (_startDate.isBefore(firstDate)) {
        _validationError.add('Start date cannot be before ${firstDate.toDateString}');
      }

      if (_endDate.isAfter(lastDate)) {
        _validationError.add('End date cannot be after ${lastDate.toDateString}');
      }

      if (getOverlappedRangeIds(_endDate, true).isNotEmpty) {
        _validationError.add('This date range overlaps with existing constraints');
      }

      return _validationError.isEmpty;
    }
  }

  /// Converts the current selection to a [DateRangeVm] for persistence.
  DateRangeVm toDateRangeVm() =>
      initialDateRange?.copyWith(startDate: startDate, endDate: endDate) ??
      DateRangeVm(startDate: _startDate, endDate: _endDate);

  /// Returns the currently selected single date.
  DateTime toSingleDate() => _startDate;
}
