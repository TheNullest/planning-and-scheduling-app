part of '../schedule_upsert_manager_vm.dart';

extension ActionsManagerExtension on ScheduleUpsertManagerVm {
  List<ScheduledDayTimeEntity> get newDayTimeEntities => (_scheduledWeekDays + _scheduledWeekDays)
      .expand((item) => item.toDayTimeEntities(
          userId: userId,
          taskId: taskId,
          description: _isGlobalSettingsEnabled ? globalDescription : null,
          repeatCount: _isGlobalSettingsEnabled ? globalRepeatCount : null,
          timeMode: _isGlobalSettingsEnabled ? globalTimeMode : null))
      .toList();

  List<ScheduledOccurrenceEntity> get newFixedDateEntities => _scheduledFixedDates
      .expand((item) => item.toFixedDateEntities(
          userId: userId,
          taskId: taskId,
          description: _isGlobalSettingsEnabled ? globalDescription : null,
          timeMode: _isGlobalSettingsEnabled ? globalTimeMode : null))
      .toList();

  /// Returns ids of all week-based selected time groups
  /// for use in deletion or bulk-edit operations.
  List<ScheduleTimeRangeVm> get selectedRecurringWeeklyTimeGroups =>
      _getSelectedGroupsHelper(_scheduledWeekDays);

  /// Returns ids of all month-based selected time groups
  /// for use in deletion or bulk-edit operations.
  List<ScheduleTimeRangeVm> get selectedRecurringMonthlyTimeGroups =>
      _getSelectedGroupsHelper(_scheduledMonthDays);

  /// Returns ids of all fixed-date selected time ranges.
  List<ScheduleTimeRangeVm> get selectedFixedDateTimeGroups =>
      _getSelectedGroupsHelper(_scheduledFixedDates);

  List<ScheduleTimeRangeVm> _getSelectedGroupsHelper(List<ScheduleTimeGroupVm> groups) => groups
      .expand((item) => item.timeRanges.where((timeRange) => timeRange.isSelected.value == true))
      .toList();

  /// Returns IDs of all week-based or month-based selected time ranges
  /// for use in deletion or bulk-edit operations.
  List<String> get selectedRecurringDayTimeIds =>
      _getIds(selectedRecurringWeeklyTimeGroups + selectedRecurringMonthlyTimeGroups);

  /// Returns IDs of all fixed-date selected time ranges for deletion.
  List<String> get selectedFixedDateTimeIds => _getIds(selectedFixedDateTimeGroups);

  List<String> _getIds(List<ScheduleTimeRangeVm> timeRanges) =>
      timeRanges.map((item) => item.id).toList();

  void addMultipleToSoftRemoveds(ScheduleType type, List<String> ids) {
    if (type == ScheduleType.recurringMonthDays || type == ScheduleType.recurringWeekDays) {
      _softRemovedWeekMonthDayTimes.addAll(ids);
    } else {
      _softRemovedFixedDates.addAll(ids);
    }
    _callNotifyListener();
  }

  void removeMultipleFromSoftRemoveds(ScheduleType type, List<String> ids) {
    if (type == ScheduleType.recurringMonthDays || type == ScheduleType.recurringWeekDays) {
      _softRemovedWeekMonthDayTimes.removeWhere((id) => ids.contains(id));
    } else {
      _softRemovedFixedDates.removeWhere((id) => ids.contains(id));
    }
    _callNotifyListener();
  }

  void addToSoftRemoveds(ScheduleType type, String id) {
    if (type == ScheduleType.recurringMonthDays || type == ScheduleType.recurringWeekDays) {
      _softRemovedWeekMonthDayTimes.add(id);
    } else {
      _softRemovedFixedDates.add(id);
    }
    _callNotifyListener();
  }

  void removeFromSoftRemoveds(ScheduleType type, String id) {
    if (type == ScheduleType.recurringMonthDays || type == ScheduleType.recurringWeekDays) {
      _softRemovedWeekMonthDayTimes.remove(id);
    } else {
      _softRemovedFixedDates.remove(id);
    }
    _callNotifyListener();
  }

  void onDeleted(List<String> ids, ScheduleType type) {
    switch (type) {
      case ScheduleType.fixedDate:
        _deletion(_scheduledFixedDates, ids);
      case ScheduleType.recurringWeekDays:
        _deletion(_scheduledWeekDays, ids);

      case ScheduleType.recurringMonthDays:
        _deletion(_scheduledMonthDays, ids);

      case ScheduleType.recurringIntervals:
        break;
    }
    _callNotifyListener();
  }

  void _deletion(List<ScheduleTimeGroupVm> timeGroup, List<String> ids) {
    for (final date in timeGroup) {
      date.timeRanges.removeWhere((time) => ids.contains(time.id));
      if (date.timeRanges.isEmpty) {
        timeGroup.remove(date);
      }
    }
  }
}
