part of '../schedule_upsert_manager_vm.dart';

/// Manages the UI and logical state of multi-selection for day-time schedule cards.
///
/// This internal manager coordinates how day cards (represented by
/// [ScheduleTimeGroupVm]) are selected, deselected, and resolved
/// into entities. It primarily supports features like:
///
/// - Enabling and disabling multi-select mode for bulk operations
/// - Tracking which day cards are currently selected
/// - Resolving main entities for updates, deletions, or merges
///
/// This class is not meant to be directly exposed outside of the scheduling
/// manager and acts as a focused controller for selection-related behavior.
extension SelectionManager on ScheduleUpsertManagerVm {
  List<ScheduleTimeRangeVm> get selectedFixedDateTimeRanges => _scheduledFixedDates
      .expand((day) => day.timeRanges)
      .where((timeRange) => timeRange.isSelected.value == true)
      .toList();

  List<ScheduleTimeRangeVm> get selectedWeeklyTimeRanges => _scheduledWeekDays
      .expand((day) => day.timeRanges)
      .where((timeRange) => timeRange.isSelected.value == true)
      .toList();

  List<ScheduleTimeRangeVm> get selectedMonthlyTimeRanges => _scheduledMonthDays
      .expand((day) => day.timeRanges)
      .where((timeRange) => timeRange.isSelected.value == true)
      .toList();

  void recalculateSelectedSectionFlags(ScheduleTimeGroupVm timeGroupVm) {
    timeGroupVm.calculateSelectionState();
    final type = timeGroupVm.scheduleType;
    switch (type) {
      case ScheduleType.fixedDate:
        _sectionSelectionFlagRecalculatorHelper(
            _scheduledFixedDates, (value) => isFixedDateSchedulesSelected.value = value);
      case ScheduleType.recurringWeekDays:
        _sectionSelectionFlagRecalculatorHelper(
            _scheduledWeekDays, (value) => isWeeklySchedulesSelected.value = value);

      case ScheduleType.recurringMonthDays:
        _sectionSelectionFlagRecalculatorHelper(
            _scheduledMonthDays, (value) => isMonthlySchedulesSelected.value = value);

      case ScheduleType.recurringIntervals:
        _sectionSelectionFlagRecalculatorHelper(
            [], (value) => isIntervalSchedulesSelected.value = value);
    }
    _callNotifyListener();
  }

  void _sectionSelectionFlagRecalculatorHelper(
      List<ScheduleTimeGroupVm> timesGroup, void Function(bool?) notifier) {
    if (timesGroup.every((item) => item.isSelected.value == true)) {
      notifier(true);
    } else if (timesGroup
        .every((item) => item.isSelected.value != null && item.isSelected.value == false)) {
      notifier(false);
    } else {
      notifier(null);
    }
    _callNotifyListener();
  }

  void toggleTimeGroupSelection(ScheduleTimeGroupVm vm, bool? isSelected) {
    if (isSelected == true) {
      vm.markAsSelected();
      for (final timeRange in vm.timeRanges) {
        toggleTimeRangeSelection(timeRange, true);
      }
    } else if (_selectedItemsCount > 0 && isSelected != true) {
      vm.markAsDeselected();
      for (final timeRange in vm.timeRanges) {
        toggleTimeRangeSelection(timeRange, false);
      }
    }
    recalculateSelectedSectionFlags(vm);
  }

  void toggleTimeRangeSelection(ScheduleTimeRangeVm vm, bool? isSelected,
      [VoidCallback? calculateParentSelectionState]) {
    if (isSelected == true && vm.isSelected.value == false) {
      _selectedItemsCount += 1;
      vm.markAsSelected();
    } else if (isSelected == false && vm.isSelected.value == true) {
      _selectedItemsCount -= 1;
      vm.markAsDeselected();
    }
    calculateParentSelectionState?.call();
  }

  void selectAllByType(ScheduleType type) {
    switch (type) {
      case ScheduleType.fixedDate:
        isFixedDateSchedulesSelected.value = true;
      case ScheduleType.recurringWeekDays:
        isWeeklySchedulesSelected.value = true;
      case ScheduleType.recurringMonthDays:
        isMonthlySchedulesSelected.value = true;
      case ScheduleType.recurringIntervals:
        isIntervalSchedulesSelected.value = true;
    }
    _callNotifyListener();
  }

  void deselectAllByType(ScheduleType type) {
    switch (type) {
      case ScheduleType.fixedDate:
        isFixedDateSchedulesSelected.value = false;
      case ScheduleType.recurringWeekDays:
        isWeeklySchedulesSelected.value = false;
      case ScheduleType.recurringMonthDays:
        isMonthlySchedulesSelected.value = false;
      case ScheduleType.recurringIntervals:
        isIntervalSchedulesSelected.value = false;
    }
    _callNotifyListener();
  }

  /// Resolves and returns the main [ScheduledDayTimeEntity] associated with the
  /// first selected day card.
  ///
  /// If no matching entity is found, this method generates a fallback entity
  /// with default values based on the main card’s properties.
  // ScheduledDayTimeEntity resolveMainDayTimeEntity({
  //   required List<ScheduledDayTimeEntity> entities,
  //   required String userId,
  //   required String taskId,
  // }) {
  //   return entities.firstWhere(
  //     (entity) => entity.id == mainCard.firstTimeRangeId,
  //     orElse: () => ScheduledDayTimeEntity(
  //       id: '',
  //       userId: userId,
  //       createdAt: DateTime.now(),
  //       updatedAt: DateTime.now(),
  //       description: '',
  //       taskId: taskId,
  //       dayType: mainCard.scheduleType.getDayType,
  //       dayLabel: mainCard.label,
  //       repeatCount: 0,
  //       startTime: 0,
  //       endTime: 1439,
  //       timeMode: ScheduledTimeMode.fixed,
  //     ),
  //   );
  // }

  /// Resolves the main [ScheduledOccurrenceEntity] for fixed-date schedules.
  ///
  /// Used when the selected cards correspond to specific calendar dates rather
  /// than recurring patterns.
  // ScheduledOccurrenceEntity resolveMainFixedDateEntity(
  //   List<ScheduledOccurrenceEntity> entities,
  // ) =>
  //     entities.firstWhere(
  //       (entity) => entity.id == mainCard.firstTimeRangeId,
  //     );

  /// Toggles the current state of multi-select mode.
  ///
  /// - If multi-select is inactive, it becomes active.
  /// - If it's already active, it becomes inactive and resets selections.
  void toggleSelectionMode() {
    isSelectionMode.value = !isSelectionMode.value;
    if (isSelectionMode.value == false) {
      deselectAll();
    }
  }

  void enableSelectionMode() {
    if (!isSelectionMode.value) {
      isSelectionMode.value = true;
    }
    _callNotifyListener();
  }

  void disableSelectionMode() {
    if (isSelectionMode.value) {
      isSelectionMode.value = false;
      deselectAll();
    }
  }

  /// Deselects all selected day cards and clears the internal selection list.
  void deselectAll() {
    final selected = (_scheduledFixedDates + _scheduledWeekDays + _scheduledMonthDays)
        .where((item) => item.isSelected.value == true || item.isSelected.value == null)
        .toList();
    for (final item in selected) {
      toggleTimeGroupSelection(item, false);
    }
    isFixedDateSchedulesSelected.value = false;
    isMonthlySchedulesSelected.value = false;
    isWeeklySchedulesSelected.value = false;
    isIntervalSchedulesSelected.value = false;

    _selectedItemsCount = 0;
    _callNotifyListener();
  }
}
