part of 'schedule_vms_manager.dart';

/// Extension responsible for **entity-to-view-model orchestration**
/// within [ScheduleVmsManager].
///
/// This layer synchronizes **raw scheduling entities** (data layer)
/// with their **corresponding UI view models (VMs)** — effectively acting as
/// the **data-visualization bridge** in the scheduling architecture.
///
/// ### Core Capabilities:
/// - Initialize, insert, update, or delete schedule entities (recurring + fixed)
/// - Transform entity collections into structured, grouped day/time card VMs
/// - Maintain persistence, ordering, and data integrity across sync operations
/// - Trigger UI layer updates via [_callNotifyListener] for real-time reactivity
///
/// In short: this extension is the **backend adapter** that translates your
/// stored scheduling data into a coherent, user-facing model tree.
extension EntityManagerExtension on ScheduleVmsManager {

  void initScheduledDayTimes(List<ScheduledDayTimeEntity> entities) {
    if (entities.isNotEmpty) {
      final upsertedLabels = <String>[];

      // Step 5: Group entities by type and label into card view models.
      for (final item in _sortDayTimes(entities)) {
        if (upsertedLabels.contains(item.dayLabel)) continue;
        upsertedLabels.add(item.dayLabel);

        final groupedDays = entities.where((entity) => entity.dayLabel == item.dayLabel).toList();

        if (item.dayType == DayType.weekDay) {
          _scheduledMonthDays.add(ScheduleTimeGroupVm(
              label: item.dayLabel,
              scheduleType: ScheduleType.recurringWeekDays,
              scheduledDayTimeVms: ScheduleTimeRangeVm.fromDayTimeEntities(groupedDays)));
        } else if (item.dayType == DayType.monthDay) {
          _scheduledMonthDays.add(ScheduleTimeGroupVm(
              label: item.dayLabel,
              scheduleType: ScheduleType.recurringMonthDays,
              scheduledDayTimeVms: ScheduleTimeRangeVm.fromDayTimeEntities(groupedDays)));
        }
      }
    }

    _callNotifyListener();
  }

  void initScheduledFixedDates(List<ScheduledOccurrenceEntity> entities) {
    _scheduledFixedDates.clear();

    // Sort by start date/time.

    // Group entities into cards by start date string.
    for (final entity in _sortFixedDates(entities)) {
      final startDateString = entity.startDateTime.toDateString;

      // Avoid duplicates for identical date labels.
      if (_scheduledFixedDates.any((card) => card.label == startDateString)) continue;

      final groupedItems =
          entities.where((item) => item.startDateTime.toDateString == startDateString).toList();

      _scheduledFixedDates.add(ScheduleTimeGroupVm(
        label: startDateString,
        scheduleType: ScheduleType.fixedDate,
        scheduledDayTimeVms: ScheduleTimeRangeVm.fromOccurrenceEntities(groupedItems),
      ));
    }

    // Trigger change notification for UI refresh.
    _callNotifyListener();
  }

  /// Sorts **recurring** [ScheduledDayTimeEntity] objects by `startTime` (ascending).
  List<ScheduledDayTimeEntity> _sortDayTimes(List<ScheduledDayTimeEntity> entities) {
    return List<ScheduledDayTimeEntity>.from(entities)
      ..sort((a, b) => a.startTime.compareTo(b.startTime));
  }

  /// Sorts **fixed-date** [ScheduledOccurrenceEntity] objects by `startDateTime` (ascending).
  List<ScheduledOccurrenceEntity> _sortFixedDates(List<ScheduledOccurrenceEntity> entities) {
    return List<ScheduledOccurrenceEntity>.from(entities)
      ..sort((a, b) => a.startDateTime.compareTo(b.startDateTime));
  }

  /// Handles entity deletions and synchronizes corresponding card view models.
  ///
  /// If [isFixedDate] is `true`:
  /// - Removes entities from fixed-date collections.
  /// - Prunes empty cards after deletion.
  ///
  /// Otherwise:
  /// - Cleans up recurring (week-day/month-day) entities.
  /// - Updates associated cards accordingly.
  ///
  /// Triggers a state change notification upon completion.
  void onDeleted(List<String> ids, [bool isFixedDate = false]) {
    if (isFixedDate) {
      // Remove fixed-date entities and update relevant cards.
      _scheduledFixedDates
        ..forEach((card) => card.onDeleted(ids))
        ..removeWhere((card) => card.timeRanges.isEmpty);
    } else {
      // Remove recurring entities and clean up week/month day cards.
      for (final card in (_scheduledWeekDays + _scheduledMonthDays)
          .where((item) => item.timeRanges.isNotEmpty)) {
        card.onDeleted(ids);
      }
    }

    // Notify listeners of updated state.
    _callNotifyListener();
  }
}
