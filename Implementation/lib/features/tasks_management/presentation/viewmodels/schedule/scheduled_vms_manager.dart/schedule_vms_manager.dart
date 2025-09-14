import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/utils/days.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/sync_operation.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_upsert_manager/schedule_upsert_manager_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/day_label_with_time_ranges.dart';

part 'schedule_time_group_vms_manager.dart';
part 'entity_manager.dart';
part 'exceptions_manager.dart';

/// Centralized controller for managing all **scheduled day/time configurations**
/// associated with a specific task and user.
///
/// This class acts as the **orchestration layer** between the data and UI layers:
/// - **Data layer:** raw entities such as [ScheduledDayTimeEntity] and [ScheduledOccurrenceEntity]
/// - **UI layer:** reactive view models like [ScheduleTimeGroupVm]
///
/// It consolidates initialization, synchronization, selection handling, sorting,
/// and change notification logic across three scheduling domains:
///
/// - **Weekly recurring schedules**
/// - **Monthly recurring schedules**
/// - **Fixed-date (non-recurring) occurrences**
///
/// Additionally, it leverages [ChangeNotifier] to provide reactive updates,
/// ensuring that any UI consuming this manager (e.g., via `Provider`) automatically
/// rebuilds when relevant data changes.
///
/// ---
/// ### Internal Architecture
/// This manager is composed of specialized submodules (via `part` files):
/// - `entity_manager.dart`: Handles entity initialization, mutation, and persistence.
/// - `day_picker_cards_manager.dart`: Manages UI card state and user interaction logic.
/// - `exceptions_manager.dart`: Handles exception synchronization (dates, times, etc.).
///
/// ---
/// ### Typical Lifecycle
/// 1. Initialize entities (either fixed-date or recurring)
/// 2. Generate reactive view-model cards for rendering
/// 3. Handle user interactions such as selection or editing
/// 4. Propagate updates to the UI through [notifyListeners]
///
/// ---
/// ### Example
/// ```dart
/// final manager = ScheduleVmsManager(userId: 'u1', taskId: 't1');
///
/// // Initialize data (in practice, from repository or API)
/// manager.initScheduledFixedDates(fetchedFixedDateEntities);
/// manager.initScheduledDayTimes(fetchedRecurringEntities);
///
/// // Bind to UI via Provider
/// ChangeNotifierProvider(create: (_) => manager);
/// ```
///
/// ---
/// ### See also
/// - [ScheduledDayTimeEntity]
/// - [ScheduledOccurrenceEntity]
/// - [ScheduleTimeGroupVm]
class ScheduleVmsManager extends ChangeNotifier {
  /// Creates a new schedule manager for the given [taskId] and [userId].
  ///
  /// This constructor preloads sample fixed-date occurrences for demonstration.
  /// In production, replace this with repository-driven initialization.
  ScheduleVmsManager({
    required String userId,
    required this.taskId,
  }) : _userId = userId {
    initScheduledFixedDates([
      // Sample hardcoded mock data (for demonstration)
      ScheduledOccurrenceEntity(
        id: '',
        userId: userId,
        createdAt: DateTime.now(),
        taskId: taskId,
        startDateTime: DateTime.now(),
        endDateTime: DateTime.now().add(const Duration(hours: 1)),
        schedulerId: 'k',
        timeMode: ScheduledTimeMode.fixed,
        schedulerType: ScheduleType.fixedDate,
        occurrenceStatus: OccurrenceStatus.scheduled,
        sequenceNumber: 0,
      ),
      ScheduledOccurrenceEntity(
        id: '',
        userId: userId,
        timeMode: ScheduledTimeMode.flexible,
        createdAt: DateTime.now(),
        taskId: taskId,
        startDateTime: DateTime.now().add(const Duration(hours: 1)),
        endDateTime: DateTime.now().add(const Duration(hours: 2)),
        schedulerId: 'k',
        schedulerType: ScheduleType.fixedDate,
        occurrenceStatus: OccurrenceStatus.scheduled,
        sequenceNumber: 0,
      ),
      ScheduledOccurrenceEntity(
        id: '',
        userId: userId,
        createdAt: DateTime.now(),
        taskId: taskId,
        startDateTime: DateTime.now().add(const Duration(hours: 5)),
        endDateTime: DateTime.now().add(const Duration(hours: 7)),
        schedulerId: 'k',
        schedulerType: ScheduleType.fixedDate,
        timeMode: ScheduledTimeMode.windowed,
        occurrenceStatus: OccurrenceStatus.scheduled,
        sequenceNumber: 0,
      ),
      ScheduledOccurrenceEntity(
        id: '',
        userId: userId,
        createdAt: DateTime.now(),
        taskId: taskId,
        startDateTime: DateTime.now().add(const Duration(days: 5, hours: 4, minutes: 30)),
        endDateTime: DateTime.now().add(const Duration(days: 5, hours: 7, minutes: 45)),
        schedulerId: 'k',
        timeMode: ScheduledTimeMode.fixed,
        schedulerType: ScheduleType.fixedDate,
        occurrenceStatus: OccurrenceStatus.scheduled,
        sequenceNumber: 0,
      ),
    ]);
  }

  /// Manually triggers a change notification to all UI listeners.
  ///
  /// This is a thin wrapper around [notifyListeners] used by submodules to
  /// maintain consistent update semantics.
  void _callNotifyListener() => notifyListeners();

  /// Unique user identifier for the current scheduling context.
  final String _userId;

  /// Identifier of the task whose schedule data this manager controls.
  final String taskId;

  // ────────────────────────────────
  // Core internal data collections
  // ────────────────────────────────

  /// ViewModels representing **fixed-date** day cards.
  final _scheduledFixedDates = <ScheduleTimeGroupVm>[];

  /// ViewModels representing **weekly recurring** day cards.
  final _scheduledWeekDays = <ScheduleTimeGroupVm>[];

  /// ViewModels representing **monthly recurring** day cards.
  final _scheduledMonthDays = <ScheduleTimeGroupVm>[];

  // ────────────────────────────────
  // Exception handling collections
  // ────────────────────────────────

  /// List of date-level exceptions that should be skipped.
  final _exceptionDates = <DateTime>[];

  /// List of month-day-level exceptions that override recurring rules.
  final _exceptionMonthDays = <int>[];

  /// List of week-day-level exceptions that override recurring rules.
  final _exceptionWeekDays = <WeekDay>[];

  /// Collection of time-range-level exceptions that override schedule slots.
  final _exceptionTimeRanges = <TimeRangeItemVm>[];

  /// Collection of date-range-level exceptions that override full-day spans.
  final _exceptionDateRanges = <DateRangeItemVm>[];

  ScheduleUpsertManagerVm get upsertManager => ScheduleUpsertManagerVm(
      taskId: taskId,
      userId: _userId,
      scheduledFixedDates: _scheduledFixedDates,
      scheduledWeekDays: _scheduledWeekDays,
      scheduledMonthDays: _scheduledMonthDays);
}
