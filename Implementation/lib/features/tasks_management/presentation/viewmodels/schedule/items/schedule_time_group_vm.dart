import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/day_label_with_time_ranges.dart';
import 'package:zamaan/presentation_shared/models/mixinn/list_item_state_mixin.dart';

/// ViewModel for [ScheduleTimeGroupVm] that manages a day's time ranges as interactive chips.
///
/// This ViewModel provides the data and state management for a single day card in a scheduling interface.
/// It works closely with [ScheduleTimeGroupVm] to display time ranges as individual chips
/// that can be added, edited, or removed while maintaining selection state and day-specific information.
///
/// Each time range is represented as a chip in the UI, and this ViewModel handles:
/// - Storing and managing the list of time range chips
/// - Converting time ranges to display strings for chip labels
/// - Notifying the UI when chips are added, updated, or removed
/// - Providing quick access to the first time range for focus management
///
/// Typical usage with [ScheduleTimeGroupVm]:
/// ```dart
/// final dayVm = ScheduleTimeGroupVmVm(
///   dayType: DayType.monday,
///   dayLabel: 'Monday',
///   scheduledDayTimeVms: [timeRangeVm1, timeRangeVm2],
/// );
///
/// // Used in the widget
/// ScheduleTimeGroupVm(
///   dayType: dayVm.dayType,
///   day: dayVm.dayLabel,
///   isSelected: isSelected,
///   onPressed: () => _handleDayTap(dayVm),
///   // ... other parameters
/// )
/// ```
///
/// Chip display in the UI:
///
/// Monday (Selected)\
/// ┌─────────────────────┐\
/// │  🕘 09:00 - 10:30 × │ ← Chip from timeRanges[0]\
/// │  🕐 14:00 - 15:45 × │ ← Chip from timeRanges[1]\
/// │  [ + Add time ]     │ ← Adds new item to _scheduledTimeRangeVms\
/// └─────────────────────┘
///
class ScheduleTimeGroupVm extends ChangeNotifier with ListItemStateMixin {
  /// Creates a [ScheduleTimeGroupVm] with existing time range chips.
  ///
  /// Use this constructor when the day already has scheduled time ranges that should
  /// be displayed as chips in the [ScheduleTimeGroupVm].
  ///
  /// The ViewModel is automatically marked as persisted for state management.
  ///
  /// [dayType]: The type of day (maps to [scheduleType])
  /// [dayLabel]: The display label (maps to [label])
  /// [scheduledDayTimeVms]: Initial time ranges to display as chips
  ScheduleTimeGroupVm({
    required this.scheduleType,
    required this.label,
    required List<ScheduleTimeRangeVm> scheduledDayTimeVms,
  }) : _scheduledTimeRangeVms = scheduledDayTimeVms {
    markAsPersisted();
  }

  /// Creates a [ScheduleTimeGroupVm] without any time range chips.
  ///
  /// Use this for days that don't have any scheduled time ranges yet, typically
  /// for new schedule entries or days that are selectable but haven't been configured.
  ///
  /// [dayType]: The type of day (maps to [scheduleType])
  /// [dayLabel]: The display label (maps to [label])
  ScheduleTimeGroupVm.asRawItem({
    required this.scheduleType,
    required this.label,
  }) : _scheduledTimeRangeVms = [];

  /// The day type that corresponds to [scheduleType].
  ///
  /// This ensures consistency between the ViewModel and widget, and is used
  /// for business logic like weekday/weekend differentiation.
  final ScheduleType scheduleType;

  /// The display label that corresponds to [label].
  ///
  /// This text is shown in the day card header and should match what users
  /// expect to see (e.g., "Monday", "Tue", "15th" or "Monday, 2025/10/13").
  final String label;

  bool isExceptionDay = false;

  final List<ScheduleTimeRangeVm> _scheduledTimeRangeVms;

  /// Gets the ID of the first time range chip, if any exist.
  ///
  /// This is particularly useful when you need to:
  /// - Set initial focus in the UI
  /// - Provide a default for operations that need a time range ID
  /// - Check if the day has any scheduled chips without examining the entire list
  ///
  /// Returns `null` when no time range chips are present.
  String? get firstTimeRangeId =>
      _scheduledTimeRangeVms.isNotEmpty ? _scheduledTimeRangeVms.first.id : null;

  /// Updates the chip display when time ranges are added or modified.
  ///
  /// This method handles the common "upsert" (update + insert) pattern for
  /// time range chips. It:
  /// 1. Removes existing chips with matching IDs (updates)
  /// 2. Adds new chips from the provided entities (inserts)
  /// 3. Notifies listeners to refresh the [ScheduleTimeGroupVm] UI
  ///
  /// Use this when receiving new schedule data from APIs or user input.
  ///
  /// [entities]: Time range entities to add or update as chips
  void onUpserted<T extends BaseEntityAbstraction>(
      List<T> entities, List<ScheduleTimeRangeVm> Function(List<T>) newItems) {
    if (entities.isEmpty) return;
    markAsPersisted();
    _scheduledTimeRangeVms
      ..removeWhere((item) => entities.any((e) => e.id == item.id))
      ..addAll(newItems(entities));
  }

  /// Removes time range chips by their IDs.
  ///
  /// This method is typically called when users delete chips from the
  /// [ScheduleTimeGroupVm] UI. It:
  /// 1. Removes the specified chips from the internal list
  /// 2. Notifies listeners to update the chip display
  ///
  /// [ids]: List of time range IDs to remove from the chip display
  void onDeleted(List<String> ids) {
    _scheduledTimeRangeVms.removeWhere((item) => ids.contains(item.id));
  }

  /// Gets an unmodifiable list of time range ViewModels for chip display.
  ///
  /// Each [TimeRangeVm] in this list represents one chip in the
  /// [ScheduleTimeGroupVm]. The unmodifiable list ensures UI consistency
  /// during rendering and prevents accidental modifications.
  ///
  /// Use this property when building the chip list in the UI.
  List<ScheduleTimeRangeVm> get timeRanges => List.unmodifiable(_scheduledTimeRangeVms);

  /// Gets time ranges formatted as strings for chip labels.
  ///
  /// This converts each time range ViewModel into a display string suitable
  /// for chip labels in the format "HH:MM - HH:MM".
  ///
  /// Example output: `["09:00 - 10:30", "14:00 - 15:45"]`
  ///
  /// These strings are typically used directly in [Chip] widgets without
  /// additional formatting.
  List<String> get getTimeRangesAsString => timeRanges
      .map((item) => '${item.startTime.toDayTimeString} - ${item.endTime.toDayTimeString}')
      .toList();

  List<ScheduledDayTimeEntity> toDayTimeEntities({
    required String userId,
    required String taskId,
    required String? description,
    required int? repeatCount,
    required ScheduledTimeMode? timeMode,
  }) {
    final selectedTimeRanges = _scheduledTimeRangeVms
        .where((item) => item.isSelected.value == true || item.isNewItem.value)
        .toList();

    return ScheduleTimeRangeVm.toDayTimeEntities(
        timeRangeVms: selectedTimeRanges,
        taskId: taskId,
        userId: userId,
        dayLabel: label,
        dayType: scheduleType.getDayType,
        description: description,
        timeMode: timeMode,
        repeatCount: repeatCount);
  }

  List<ScheduledOccurrenceEntity> toFixedDateEntities({
    required String userId,
    required String taskId,
    required String? description,
    required ScheduledTimeMode? timeMode,
  }) {
    final selectedTimeRanges = _scheduledTimeRangeVms
        .where((item) => item.isSelected.value == true || item.isNewItem.value)
        .toList();

    return ScheduleTimeRangeVm.toOccurrenceEntities(
        timeRangeVms: selectedTimeRanges,
        taskId: taskId,
        userId: userId,
        dayLabel: label,
        description: description,
        timeMode: timeMode);
  }

  /// Returns a [DayLabelWithTimeRanges] snapshot representing
  /// this day’s complete overview — including its identifying label
  /// and all associated time ranges.
  ///
  /// Used by overview widgets and schedule summaries to present
  /// a high-level view of daily configurations.
  ///
  /// **Example:**
  /// ```dart
  /// final overview = vm.dayOverview;
  /// print(overview.dayLabel);    // e.g., "Monday"
  /// print(overview.timeRanges);  // e.g., [08:00–10:00, 14:00–16:00]
  /// ```
  DayLabelWithTimeRanges get dayOverview => DayLabelWithTimeRanges(
      dayLabel: label, timeRanges: TimeRangeItemVm.fromTimeRangeVms(timeRanges));

  /// Returns the IDs of all time ranges associated with this day.
  ///
  /// This is often used when performing batch operations such as deletions,
  /// synchronization, or database persistence.
  ///
  /// Example:
  /// ```dart
  /// final ids = vm.dayTimeIds; // ["id_1", "id_2", "id_3"]
  /// ```
  List<String> get dayTimeIds => timeRanges.map((time) => time.id).toList();

  @override
  void calculateSelectionState() {
    final selectedCount =
        _scheduledTimeRangeVms.where((item) => item.isSelected.value == true).length;
    isSelected.value =
        selectedCount == 0 ? false : (selectedCount == _scheduledTimeRangeVms.length ? true : null);
  }

  /// Clears all time ranges associated with this day.
  ///
  /// Typically used when resetting a day's schedule to an empty state
  /// or when performing mass deletions.
  void clearDay() => _scheduledTimeRangeVms.clear();
}
