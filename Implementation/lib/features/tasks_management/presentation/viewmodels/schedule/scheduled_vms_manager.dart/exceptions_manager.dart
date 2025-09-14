part of 'schedule_vms_manager.dart';

/// Extension that manages and synchronizes **schedule exception states**
/// within [ScheduleVmsManager].
///
/// This layer governs all **deviation points** from normal recurring schedules —
/// including excluded days, specific dates, or blocked time intervals.
///
/// ### Responsibilities:
/// - Maintain exception lists for:
///   - Specific dates
///   - Weekdays
///   - Month days
///   - Time ranges
///   - Date ranges
/// - Synchronize exception flags with their respective UI view models
/// - Trigger reactive updates through [_callNotifyListener]
///
/// Effectively, this acts as the **conflict and exclusion manager**
/// ensuring that exceptions properly override or mask recurring patterns.
extension ExceptionsManagerExtension on ScheduleVmsManager {
  /// Returns an immutable snapshot of all **exceptional calendar dates**
  /// (non-recurring one-off dates excluded from scheduling).
  List<DateTime> get exceptionDates => List.unmodifiable(_exceptionDates);

  /// Returns an immutable list of **exception weekdays**
  /// that should be skipped or excluded from repetition.
  List<WeekDay> get exceptionWeekDays => List.unmodifiable(_exceptionWeekDays);

  /// Returns an immutable list of **exception month days**
  /// (e.g., the 10th or 25th of every month) excluded from schedules.
  List<int> get exceptionMonthDays => List.unmodifiable(_exceptionMonthDays);

  /// Returns an immutable list of **exception time ranges**
  /// (specific hours/minutes within a day that should be blocked).
  List<TimeRangeItemVm> get exceptionTimeRanges => List.unmodifiable(_exceptionTimeRanges);

  /// Returns an immutable list of **exception date ranges**
  /// (spanning multiple consecutive days that are excluded).
  List<DateRangeItemVm> get exceptionDateRanges => List.unmodifiable(_exceptionDateRanges);

  // ---------------------------------------------------------------------------
  // SETTERS — Each setter updates internal state and triggers reactive refresh.
  // ---------------------------------------------------------------------------

  /// Updates the list of **exception dates** and notifies listeners.
  ///
  /// Use this when the user selects or deselects individual calendar dates
  /// to exclude from recurring schedules.
  set exceptionDates(List<DateTime> values) {
    _exceptionDates
      ..clear()
      ..addAll(values);
    _callNotifyListener();
  }

  /// Updates the list of **exception weekdays** and reflects the changes
  /// in all corresponding weekday cards.
  ///
  /// Automatically toggles the `isExceptionDay` flag for each affected
  /// [ScheduleTimeGroupVm] instance.
  set exceptionWeekDays(List<WeekDay> values) {
    _exceptionWeekDays
      ..clear()
      ..addAll(values);

    for (final day in _scheduledWeekDays) {
      day.isExceptionDay = _exceptionWeekDays.contains(WeekDay.fromName(day.label));
    }

    _callNotifyListener();
  }

  /// Updates the list of **exception month days** and refreshes
  /// all relevant month-day view cards.
  ///
  /// Each affected card’s `isExceptionDay` property is automatically set.
  set exceptionMonthDays(List<int> values) {
    _exceptionMonthDays
      ..clear()
      ..addAll(values);

    for (final day in _scheduledMonthDays) {
      day.isExceptionDay = _exceptionMonthDays.contains(int.tryParse(day.label));
    }

    _callNotifyListener();
  }

  /// Updates the list of **exception time ranges** (e.g., 14:00–16:00 blocked slots)
  /// and triggers a UI refresh.
  set exceptionTimeRanges(List<TimeRangeItemVm> values) {
    _exceptionTimeRanges
      ..clear()
      ..addAll(values);
    _callNotifyListener();
  }

  /// Updates the list of **exception date ranges** (multi-day exclusions)
  /// and triggers a reactive update to the UI.
  set exceptionDateRanges(List<DateRangeItemVm> values) {
    _exceptionDateRanges
      ..clear()
      ..addAll(values);
    _callNotifyListener();
  }
}
