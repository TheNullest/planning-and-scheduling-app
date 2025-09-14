import 'package:flutter/widgets.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/models/on_updating_date_time_constraints_exceptions.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

/// ViewModel representing **schedule constraints** for task scheduling.
///
/// This class encapsulates all logic around:
/// - Managing schedule bounds (start/end dates).
/// - Handling exception rules (time ranges, date ranges, specific dates, weekdays, month days).
/// - Enforcing constraints during scheduling.
/// - Converting back and forth between `ScheduleConstraintsEntity` and UI-bound VMs.
/// - Tracking original values for undo/reset/change detection.
///
/// It extends [BaseViewModel] to support:
/// - Change tracking.
/// - Validation.
/// - Conversion to/from persistent entities.
///
/// Usage:
/// - Instantiate when creating or editing a task’s scheduling rules.
/// - Bind to UI using `ChangeNotifierProvider`.
/// - Use modification methods (`addTimeRangeException`, `modifyexceptionDates`, etc.)
///   to update constraint data while automatically triggering change tracking.
class ScheduleConstraintsVm extends BaseViewModel<ScheduleConstraintsEntity> {
  // ===========================================================================
  // Constructors
  // ===========================================================================

  /// Creates a new `ScheduleConstraintsVm` for a given [userId] and [taskId].
  ScheduleConstraintsVm({required super.userId, required this.taskId})
      : super(viewModelTitle: 'Schedule constraints');

  /// Builds a `ScheduleConstraintsVm` from an existing [ScheduleConstraintsEntity].
  ScheduleConstraintsVm.fromEntity({
    required ScheduleConstraintsEntity entity,
  }) : super(
          entity: entity,
          userId: entity.userId,
          viewModelTitle: 'Schedule constraints',
        );

  // ===========================================================================
  // Initialization & Reset
  // ===========================================================================

  /// Initializes values based on an optional [entity].
  /// - If [entity] is provided, loads its values into this ViewModel.
  /// - Otherwise, sets defaults (null dates, empty exception lists, enforce bounds = true).
  @override
  void initialize([ScheduleConstraintsEntity? entity]) {
    originalValues.clear();
    if (entity != null) {
      taskId = entity.taskId;
      addToOriginalValues<DateTime?>(#startDate, entity.startDate);
      addToOriginalValues<DateTime?>(#endDate, entity.endDate);
      addToOriginalValues<List<DateTime>>(#exceptionDates, entity.exceptionDates);
      addToOriginalValues<List<WeekDay>>(#exceptionWeekDays, entity.exceptionWeekDays);
      addToOriginalValues<List<int>>(#exceptionMonthDays, entity.exceptionMonthDays);
      addToOriginalValues<bool>(#enforceScheduleBounds, entity.enforceScheduleBounds);
    } else {
      addToOriginalValues<DateTime?>(#startDate, null);
      addToOriginalValues<DateTime?>(#endDate, null);
      addToOriginalValues<List<DateTime>>(#exceptionDates, []);
      addToOriginalValues<List<WeekDay>>(#exceptionWeekDays, []);
      addToOriginalValues<List<int>>(#exceptionMonthDays, []);
      addToOriginalValues<bool>(#enforceScheduleBounds, true);
    }

    // Time and date ranges are initialized separately.
    addToOriginalValues<List<TimeRangeVm>>(#exceptionTimeRanges, <TimeRangeVm>[]);
    addToOriginalValues<List<DateRangeVm>>(#exceptionDateRanges, <DateRangeVm>[]);

    // Initialize backing fields
    _startDate = getOriginalSignleValue<DateTime?>(#startDate);
    _endDate = getOriginalSignleValue<DateTime?>(#endDate);

    _exceptionDates
      ..clear()
      ..addAll(getOriginalListValue<DateTime>(#exceptionDates));

    _exceptionWeekDays
      ..clear()
      ..addAll(getOriginalListValue<WeekDay>(#exceptionWeekDays));

    _exceptionMonthDays
      ..clear()
      ..addAll(getOriginalListValue<int>(#exceptionMonthDays));

    enforceScheduleBounds.value = getOriginalSignleValue<bool>(#enforceScheduleBounds);
    sortDateTime();
    super.initialize(entity);
  }

  /// Resets all values back to their original persisted state.
  @override
  void resetValues() {
    _startDate = getOriginalSignleValue<DateTime?>(#startDate);
    _endDate = getOriginalSignleValue<DateTime?>(#endDate);

    _exceptionTimeRanges
      ..clear()
      ..addAll(getOriginalListValue<TimeRangeVm>(#exceptionTimeRanges));

    _exceptionDates
      ..clear()
      ..addAll(getOriginalListValue<DateTime>(#exceptionDates));

    _exceptionDateRanges
      ..clear()
      ..addAll(getOriginalListValue<DateRangeVm>(#exceptionDateRanges));

    _exceptionWeekDays
      ..clear()
      ..addAll(getOriginalListValue<WeekDay>(#exceptionWeekDays));

    _exceptionMonthDays
      ..clear()
      ..addAll(getOriginalListValue<int>(#exceptionMonthDays));

    sortDateRange();
    sortDateTime();
    sortTimeRange();

    enforceScheduleBounds.value = getOriginalSignleValue<bool>(#enforceScheduleBounds);
    super.resetValues();
  }

  // ===========================================================================
  // Public Properties
  // ===========================================================================

  /// The task ID these constraints apply to.
  late String taskId;

  /// Start date of the schedule (nullable).
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
    processChanges(#startDate, _startDate);
  }

  /// End date of the schedule (nullable).
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
    processChanges(#endDate, _endDate);
  }

  /// Immutable list of exception time ranges.
  List<TimeRangeVm> get exceptionTimeRanges => List.unmodifiable(_exceptionTimeRanges);

  /// Converts [exceptionTimeRanges] to persistence entities.
  List<TimeRangeEntity> get getTimeRangeAsEntities => TimeRangeVm.toTimeRangeEntities(
        timeRangeVms: exceptionTimeRanges,
        parentId: id!,
        userId: userId,
        description: description,
      );

  /// Immutable list of exception date ranges.
  List<DateRangeVm> get exceptionDateRanges => List.unmodifiable(_exceptionDateRanges);

  /// Converts [exceptionDateRanges] to persistence entities.
  List<DateRangeEntity> get getDateRangeAsEntities => DateRangeVm.toDateRangeEntities(
        userId: userId,
        dateRangeVms: exceptionDateRanges,
        parentId: id!,
        description: description,
      );

  /// Immutable list of individual date exceptions.
  List<DateTime> get exceptionDates => List.unmodifiable(_exceptionDates);

  /// Immutable list of weekday exceptions.
  List<WeekDay> get exceptionWeekDays => List.unmodifiable(_exceptionWeekDays);

  /// Immutable list of exception month days.
  List<int> get exceptionMonthDays => List.unmodifiable(_exceptionMonthDays);

  /// Whether to enforce schedule bounds (start/end date).
  final ValueNotifier<bool> enforceScheduleBounds = ValueNotifier(true);

  /// Updates [enforceScheduleBounds] while tracking changes.
  void modifyEnforceScheduleBoundsValue(bool value) {
    processChanges(#enforceScheduleBounds, value);
    enforceScheduleBounds.value = value;
  }

  // ===========================================================================
  // List Management
  // ===========================================================================

  /// Returns a payload object used for batch updates of date/time exceptions.
  OnUpdatingDateTimeConstraintsExceptions get onUpdating => OnUpdatingDateTimeConstraintsExceptions(
        userId: userId,
        description: description,
        parentId: taskId,
        allShouldModify: description != getOriginalSignleValue<String>(#description),
        exceptionDateRanges: exceptionDateRanges,
        exceptionTimeRanges: exceptionTimeRanges,
      );

  // --- Initialization helpers ---

  /// Initializes the [exceptionTimeRanges] from [TimeRangeEntity]s.
  void initexceptionTimeRanges(List<TimeRangeEntity> exceptionTimeRanges) {
    _exceptionTimeRanges
      ..clear()
      ..addAll(TimeRangeVm.fromTimeRangeEntities(exceptionTimeRanges));
    sortTimeRange();
    addToOriginalValues<List<TimeRangeVm>>(#exceptionTimeRanges, List.from(_exceptionTimeRanges));
    notifyListeners();
  }

  /// Initializes the [exceptionDateRanges] from [DateRangeEntity]s.
  void initexceptionDateRanges(List<DateRangeEntity> exceptionDateRanges) {
    final vms = DateRangeVm.fromDateRangeEntities(exceptionDateRanges);
    addToOriginalValues<List<DateRangeVm>>(#exceptionDateRanges, List.from(vms));
    _exceptionDateRanges
      ..clear()
      ..addAll(vms);
    sortDateRange();
    notifyListeners();
  }

  // --- Sorting helpers ---

  /// Sorts [exceptionTimeRanges] by end → start times.
  void sortTimeRange() => _exceptionTimeRanges.sort((a, b) => a.endTime.compareTo(b.startTime));

  /// Sorts [exceptionDates] chronologically.
  void sortDateTime() => _exceptionDates.sort();

  /// Sorts [exceptionDateRanges] by start, then end.
  /// - Null starts go **after** non-null.
  /// - Null ends go **after** non-null.
  void sortDateRange() {
    _exceptionDateRanges.sort((a, b) {
      final aStart = a.startDate;
      final bStart = b.startDate;
      final aEnd = a.endDate;
      final bEnd = b.endDate;

      if (aStart == null && bStart == null) {
        // compare by end
      } else if (aStart == null) {
        return 1;
      } else if (bStart == null) {
        return -1;
      } else {
        final cmp = aStart.compareTo(bStart);
        if (cmp != 0) return cmp;
      }

      if (aEnd == null && bEnd == null) return 0;
      if (aEnd == null) return 1;
      if (bEnd == null) return -1;
      return aEnd.compareTo(bEnd);
    });
  }

  // --- Time Range API ---

  /// Adds a new [TimeRangeVm] exception.
  void addTimeRangeException(TimeRangeVm timeException) {
    _exceptionTimeRanges.add(timeException);
    sortTimeRange();
    processChanges(#exceptionTimeRanges, _exceptionTimeRanges);
  }

  /// Edits an existing [TimeRangeVm] by replacing it.
  void editTimeRangeException(TimeRangeVm timeException) {
    _exceptionTimeRanges
      ..removeWhere((item) => item.id == timeException.id)
      ..add(timeException);
    sortTimeRange();
    processChanges(#exceptionTimeRanges, _exceptionTimeRanges);
  }

  /// Removes a [TimeRangeVm].
  /// - If it has no ID, it is removed outright.
  /// - If persisted, it is **soft removed**.
  void removeTimeRangeException(TimeRangeVm exceptionTimeRanges) {
    _exceptionTimeRanges
        .firstWhere((item) => item.id == exceptionTimeRanges.id)
        .toggleSoftRemoved();
    processChanges(#exceptionTimeRanges, _exceptionTimeRanges);
  }

  /// Marks all current [exceptionTimeRanges] as persisted,
  /// removes soft-deleted ones, and updates original values.
  void updateOriginalValuesForexceptionTimeRanges() {
    _exceptionTimeRanges
      ..removeWhere((item) => item.isSoftRemoved.value)
      ..forEach((item) => item.markAsPersisted());
    addToOriginalValues<List<TimeRangeVm>>(#exceptionTimeRanges, _exceptionTimeRanges);
    notifyListeners();
  }

  // --- Date Range API ---

  /// Adds a new [DateRangeVm] exception.
  void addDateRangeException(DateRangeVm exceptionDateRanges) {
    _exceptionDateRanges.add(exceptionDateRanges);
    sortDateRange();
    processChanges(#exceptionDateRanges, _exceptionDateRanges);
  }

  /// Edits an existing [DateRangeVm].
  void editexceptionDateRanges(DateRangeVm exceptionDateRanges) {
    _exceptionDateRanges
      ..removeWhere((item) => item.id == exceptionDateRanges.id)
      ..add(exceptionDateRanges);
    sortDateRange();
    processChanges(#exceptionDateRanges, _exceptionDateRanges);
  }

  /// Removes a [DateRangeVm].
  /// - Removes if new, soft removes if persisted.
  void removeFromexceptionDateRanges(DateRangeVm exceptionDateRanges) {
    _exceptionDateRanges
        .firstWhere((item) => item.id == exceptionDateRanges.id)
        .toggleSoftRemoved();
    processChanges(#exceptionDateRanges, _exceptionDateRanges);
  }

  /// Finalizes [exceptionDateRanges], removing soft-deleted ones
  /// and marking persisted ones.
  void updateOriginalValuesForexceptionDateRanges() {
    _exceptionDateRanges
      ..removeWhere((item) => item.isSoftRemoved.value)
      ..forEach((item) => item.markAsPersisted());
    addToOriginalValues<List<DateRangeVm>>(#exceptionDateRanges, _exceptionDateRanges);
    notifyListeners();
  }

  // --- Date API ---

  /// Replaces all date exceptions with [dates].
  void modifyexceptionDates(List<DateTime> dates) {
    _exceptionDates
      ..clear()
      ..addAll(dates)
      ..sort();
    processChanges(#exceptionDates, _exceptionDates);
  }

  /// Adds a new single date exception.
  void addDateException(DateTime newDateExcetpion) {
    _exceptionDates
      ..add(newDateExcetpion)
      ..sort();
    processChanges(#exceptionDates, _exceptionDates);
  }

  /// Removes a specific [date] from exceptions.
  void removeFromexceptionDates(DateTime date) {
    _exceptionDates.remove(date);
    processChanges(#exceptionDates, _exceptionDates);
  }

  // --- WeekDay API ---

  /// Replaces all weekday exceptions with [exceptionWeekDays].
  void addexceptionWeekDays(List<WeekDay> exceptionWeekDays) {
    _exceptionWeekDays
      ..clear()
      ..addAll(exceptionWeekDays)
      ..sort((a, b) => a.index.compareTo(b.index));
    processChanges(#exceptionWeekDays, _exceptionWeekDays);
  }

  /// Removes a single [WeekDay] exception.
  void removeFromexceptionWeekDays(WeekDay exceptionWeekDays) {
    _exceptionWeekDays.remove(exceptionWeekDays);
    processChanges(#exceptionWeekDays, _exceptionWeekDays);
  }

  // --- MonthDay API ---

  /// Replaces all exception month days with [exceptionMonthDays].
  void modifyexceptionMonthDays(List<int> exceptionMonthDays) {
    _exceptionMonthDays
      ..clear()
      ..addAll(exceptionMonthDays)
      ..sort();
    processChanges(#exceptionMonthDays, _exceptionMonthDays);
  }

  /// Removes a specific day of month exception.
  void removeFromexceptionMonthDays(int exceptionMonthDays) {
    _exceptionMonthDays.remove(exceptionMonthDays);
    processChanges(#exceptionMonthDays, _exceptionMonthDays);
  }

  // ===========================================================================
  // Conversion & Validation
  // ===========================================================================

  /// Converts this ViewModel back into a [ScheduleConstraintsEntity].
  @override
  ScheduleConstraintsEntity get toEntity => ScheduleConstraintsEntity(
        id: getOriginalSignleValue<String?>(#id)!,
        userId: userId,
        createdAt: getCreatedAt,
        updatedAt: getUpdatedAt,
        description: description,
        taskId: taskId,
        startDate: startDate,
        endDate: endDate,
        enforceScheduleBounds: enforceScheduleBounds.value,
        exceptionWeekDays: exceptionWeekDays,
        exceptionMonthDays: exceptionMonthDays,
        exceptionDates: exceptionDates,
      );

  /// A `ScheduleConstraintsVm` is valid if its [description] is not empty.
  @override
  bool get isValid => description.isNotEmpty;

  // ===========================================================================
  // Private Fields
  // ===========================================================================
  late DateTime? _startDate;
  late DateTime? _endDate;

  final List<TimeRangeVm> _exceptionTimeRanges = [];
  final List<DateRangeVm> _exceptionDateRanges = [];
  final List<DateTime> _exceptionDates = [];
  final List<WeekDay> _exceptionWeekDays = [];
  final List<int> _exceptionMonthDays = [];
}
