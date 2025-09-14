import 'package:flutter/cupertino.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/selected_day.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/mixinn/soft_remove_mixin.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

/// A **generic upsert ViewModel** for managing schedule entities that include time-based configurations.
///
/// This serves as a reusable foundation for all scheduling view models that deal with
/// selectable days, time ranges, and recurring patterns. It handles the shared state and logic
/// for initializing, modifying, and persisting schedule data.
///
/// ### Core Responsibilities
/// - Manage **selected days** and their associated time slots.
/// - Handle **repeat counts**, **time modes**, and **soft removal** for times.
/// - Provide a structured pipeline for **entity conversion**, **upsertion**, and **synchronization**.
///
/// ### Extend This Class For:
/// - `ScheduledDayTimeUpsertVm` — for day-based recurring schedules.
/// - `ScheduledFixedDateUpsertVm` — for fixed or one-time date-based schedules.
///
/// ### Example Usage
/// ```dart
/// class ScheduledDayTimeUpsertVm extends BaseScheduleUpsertVm<ScheduledDayTimeEntity> {
///   ScheduledDayTimeUpsertVm({ ... });
///   @override
///   List<ScheduledDayTimeEntity> get toEntities => ...;
/// }
/// ```
///
/// ### Design Notes
/// - Built on top of `BaseViewModel<T>` for reactive change tracking.
/// - Integrates `SoftRemovableMixin<ScheduleTimeRangeVm>` to support reversible deletions.
/// - Fully reactive: changes in time range VMs automatically trigger state updates.
abstract class BaseScheduleUpsertVm<T extends BaseEntityAbstraction> extends BaseViewModel<T>
    with SoftRemovableMixin<ScheduleTimeRangeVm> {
  BaseScheduleUpsertVm({
    required super.userId,
    required String taskId,
    required List<SelectedScheduleGroup> selectedDays,
    required this.exceptionTimeRanges,
    List<ScheduleTimeRangeVm> dayTimeVms = const [],
    super.entity,
  })  : _taskId = taskId,
        _selectedDays = selectedDays,
        super(viewModelTitle: 'Schedule') {
    initScheduledTimes(dayTimeVms);
  }

  @override
  void initialize([T? entity]) {
    if (entity == null || entity.id.isEmpty) {
      addToOriginalValues<int>(#repeatCount, 0);
      addToOriginalValues<ScheduledTimeMode>(#timeMode, ScheduledTimeMode.fixed);
      addToOriginalValues<List<ScheduleTimeRangeVm>>(#timeRangesList, []);
    }

    timeMode = getOriginalSignleValue<ScheduledTimeMode>(#timeMode);

    super.initialize(entity);
  }

  // ---------------------- Core State ---------------------- //

  /// The ID of the task to which this schedule belongs.
  final String _taskId;
  @protected
  String get taskId => _taskId;

  /// The days currently selected for scheduling.
  final List<SelectedScheduleGroup> _selectedDays;

  /// The time ranges that should be excluded from scheduling.
  final List<TimeRangeItemVm> exceptionTimeRanges;

  /// An unmodifiable list of currently selected days.
  List<SelectedScheduleGroup> get selectedDaysList => List.unmodifiable(_selectedDays);

  // ---------------------- Add/Remove Days ---------------------- //

  /// Adds a new day to the selected schedule list.
  void addSelectedDay(SelectedScheduleGroup selectedDay) {
    _selectedDays.add(selectedDay);
    notifyListeners();
  }

  /// Removes a previously selected day from the list.
  void removeSelectedDay(SelectedScheduleGroup selectedDay) {
    _selectedDays.remove(selectedDay);
    notifyListeners();
  }

  // ---------------------- Time Config ---------------------- //

  /// Defines how scheduled times behave (e.g., fixed, flexible, recurring).
  late ScheduledTimeMode _timeMode;
  ScheduledTimeMode get timeMode => _timeMode;
  set timeMode(ScheduledTimeMode value) {
    _timeMode = value;
    processChanges(#timeMode, _timeMode);
  }

  // ---------------------- Scheduled Time Management ---------------------- //

  /// The list of currently defined time ranges for the schedule.
  final List<ScheduleTimeRangeVm> _scheduledTimes = [];

  /// Returns an immutable snapshot of all scheduled time ranges.
  List<ScheduleTimeRangeVm> get scheduledTimes => List.unmodifiable(_scheduledTimes);

  /// Initializes the schedule’s time ranges.
  ///
  /// When `isReset` is `false`, the original time range values are stored for later
  /// change tracking and restoration.
  void initScheduledTimes(List<ScheduleTimeRangeVm> timeRanges, [bool isReset = false]) {
    if (!isReset) {
      addToOriginalValues<List<ScheduleTimeRangeVm>>(#timeRangesList, timeRanges);
    }
    if (timeRanges.isEmpty) return;

    _scheduledTimes
      ..clear()
      ..addAll(getOriginalListValue<ScheduleTimeRangeVm>(#timeRangesList)
          .map((item) => item.copyWith()));

    for (final timeRange in _scheduledTimes) {
      timeRange.isSoftRemoved.addListener(() {
        processChanges(#timeRangesList, _scheduledTimes, (persisted) {
          final mapPersisted = {
            for (final item in persisted as List<ScheduleTimeRangeVm>) item.id: item
          };
          return _scheduledTimes.any((item) => !(mapPersisted[item.id]?.equals(item) ?? true));
        });
      });
    }
  }

  /// Adds a new time range to the schedule and tracks the change.
  void addScheduledTime(TimeRangeVm vm) {
    _scheduledTimes.add(vm.toScheduleTimeRangeVm());
    processChanges(#timeRangesList, _scheduledTimes);
  }

  /// Updates an existing time range within the list.
  void onEditScheduledTime(TimeRangeVm editedTimeRange) {
    _scheduledTimes
        .firstWhere((item) => item.id == editedTimeRange.id)
        .updateTimeRange(editedTimeRange);

    processChanges(#timeRangesList, _scheduledTimes);
  }

  /// Handles marking a scheduled time as soft-removed or permanently deleting new items.
  void modifySoftRemoveScheduledTime(ScheduleTimeRangeVm scheduledTime) {
    if (scheduledTime.isNewItem.value) {
      _scheduledTimes.remove(scheduledTime);
    } else {
      scheduledTime.toggleSoftRemoved();
    }
    processChanges(#timeRangesList, _scheduledTimes);
  }

  // ---------------------- Soft Remove Handling ---------------------- //

  /// Clears all time ranges currently marked as soft removed.
  @override
  void clearSoftRemovedItems() {
    _scheduledTimes.removeWhere((item) => item.isSoftRemoved.value);
    notifyListeners();
  }

  /// Restores all soft-removed time ranges back to active state.
  @override
  void restoreAllSoftRemovedItems() {
    for (final item in _scheduledTimes) {
      item.unmarkAsSoftRemoved();
    }
    notifyListeners();
  }

  /// Restores a specific soft-removed time range by ID.
  @override
  void restoreSoftRemovedItem(String id) {
    _scheduledTimes.firstWhere((item) => item.id == id).unmarkAsSoftRemoved();
    notifyListeners();
  }

  /// Returns all time ranges currently marked as soft removed.
  @override
  List<ScheduleTimeRangeVm> get getSoftRemovedItems =>
      _scheduledTimes.where((item) => item.isSoftRemoved.value).toList();

  List<String> get getItemsId => _scheduledTimes.map((item) => item.id).toList();

  // ---------------------- Abstract Methods ---------------------- //

  /// Converts the current ViewModel state into a list of concrete entities.
  ///
  /// Subclasses must implement this to define how their specific scheduling entities
  /// (e.g., `ScheduledDayTimeEntity`, `ScheduledFixedDateEntity`) are generated.
  List<T> get toEntities;

  /// Handles creation or update operations and reinitializes the time ranges accordingly.
  ///
  /// Automatically updates the view state after a successful upsert and ensures that
  /// duplicate time ranges across multiple selected days are consolidated.
  ///
  /// - [entities] — The list of entities that were created or updated.
  /// - [toTimeRangeVms] — Function to map entities back to `ScheduleTimeRangeVm` instances.
  /// - [isOnCreate] — Whether this operation represents a creation (`true`) or update (`false`).
  void onEntitiesUpserted(
    List<T> entities, {
    List<ScheduleTimeRangeVm> Function(List<T>)? toTimeRangeVms,
    bool isOnCreate = true,
  }) {
    isOnCreate
        ? onEntityCreated(entities.first)
        : super.onEntityUpdated(entities.isNotEmpty ? entities.first : null);

    // TODO[FIXME]: Currently, the widget repeats identical time ranges for each selected day.
    // Refactor so that identical time ranges are displayed **only once**, regardless of
    // the number of days selected. This reduces clutter and improves visual clarity.

    // TODO[Suggestion]: In the ScheduledDayTimeUpsertView, consider displaying all selected days
    // with their respective scheduled times in a grouped format. Optionally, allow a user
    // toggle to collapse identical time slots across days for a cleaner interface.

    initScheduledTimes(toTimeRangeVms!(entities));
  }

  /// Handles entity deletions and ensures internal synchronization with the UI state.
  void onEntitiesDeleted(List<String> ids) {
    for (final softRemovedItem in getSoftRemovedItems) {
      if (!ids.contains(softRemovedItem.id)) {
        throw Exception(
            '${softRemovedItem.startTime} - ${softRemovedItem.endTime} was not deleted.');
      }
    }
    clearSoftRemovedItems();
  }

  // ---------------------- Lifecycle ---------------------- //

  /// Cleans up listeners and internal state when this ViewModel is disposed.
  @override
  void dispose() {
    for (final timeRange in _scheduledTimes) {
      timeRange.disposeListItemState();
    }
    super.dispose();
  }
}
