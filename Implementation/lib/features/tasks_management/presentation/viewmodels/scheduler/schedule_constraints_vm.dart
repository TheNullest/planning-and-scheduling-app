import 'package:flutter/widgets.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/models/on_updating_constraints_date_time_exceptions.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

/// ViewModel representing schedule constraints for task scheduling.
/// Handles time constraints, exception rules, and schedule enforcement.
class ScheduleConstraintsVm extends BaseViewModel<ScheduleConstraintsEntity> {
  // Constructors --------------------------------------------------------------

  /// Creates a new ScheduleConstraints ViewModel
  ScheduleConstraintsVm({required super.userId}) : super(viewModelTitle: 'Schedule');

  // Initialization & Reset -----------------------------------------------------

  @override
  void initialize([ScheduleConstraintsEntity? entity]) {
    originalValues.clear();
    if (entity != null) {
      taskId = entity.taskId;
      addToOriginalValues<DateTime?>(#startAt, entity.startAt);
      addToOriginalValues<DateTime?>(#endAt, entity.endAt);
      addToOriginalValues<List<DateTime>>(#dateExceptions, entity.dateExceptions);
      addToOriginalValues<List<WeekDay>>(#weekDayExceptions, entity.weekDayExceptions);
      addToOriginalValues<List<int>>(#monthDayExceptions, entity.monthDayExceptions);
      addToOriginalValues<bool>(#enforceScheduleBounds, entity.enforceScheduleBounds);
    } else {
      addToOriginalValues<DateTime?>(#startAt, null);
      addToOriginalValues<DateTime?>(#endAt, null);
      addToOriginalValues<List<DateTime>>(#dateExceptions, []);
      addToOriginalValues<List<WeekDay>>(#weekDayExceptions, []);
      addToOriginalValues<List<WeekDay>>(#weekDayExceptions, []);
      addToOriginalValues<List<int>>(#monthDayExceptions, []);
      addToOriginalValues<bool>(#enforceScheduleBounds, true);
    }

    addToOriginalValues<List<TimeRangeEntity>>(#timeRangeExceptions, <TimeRangeEntity>[]);
    addToOriginalValues<List<DateRangeEntity>>(#dateRangeExceptions, <DateRangeEntity>[]);

    _startAt = getOriginalValue<DateTime?>(#startAt);
    _endAt = getOriginalValue<DateTime?>(#endAt);
    final d = getOriginalValue<List<DateTime>>(#dateExceptions);
    _dateExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<DateTime>>(#dateExceptions)));

    _weekDayExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<WeekDay>>(#weekDayExceptions)));

    _monthDayExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<int>>(#monthDayExceptions)));

    enforceScheduleBounds.value = getOriginalValue<bool>(#enforceScheduleBounds);

    super.initialize(entity);
  }

  @override
  void resetValues() {
    _startAt = getOriginalValue<DateTime?>(#startAt);
    _endAt = getOriginalValue<DateTime?>(#endAt);

    _timeRangeExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<TimeRangeEntity>>(#timeRangeExceptions)));

    _dateRangeExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<DateRangeEntity>>(#dateRangeExceptions)));

    _weekDayExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<WeekDay>>(#weekDayExceptions)));

    _monthDayExceptions
      ..clear()
      ..addAll(List.from(getOriginalValue<List<int>>(#monthDayExceptions)));

    enforceScheduleBounds.value = getOriginalValue<bool>(#enforceScheduleBounds);
    super.resetValues();
  }

  // Public properties ---------------------------------------------------------

  /// The task ID associated with these schedule constraints
  late String taskId;

  /// Start date/time for the schedule (nullable)
  DateTime? get startAt => _startAt;
  set startAt(DateTime? value) {
    _startAt = value;
    processModification(#startAt, _startAt);
  }

  /// End date/time for the schedule (nullable)
  DateTime? get endAt => _endAt;
  set endAt(DateTime? value) {
    _endAt = value;
    processModification(#endAt, _endAt);
  }

  /// List of time range exceptions
  List<TimeRangeEntity> get timeRangeExceptions => List.unmodifiable(_timeRangeExceptions);

  /// List of date range exceptions
  List<DateRangeEntity> get dateRangeExceptions => List.unmodifiable(_dateRangeExceptions);

  /// List of date range exceptions
  List<DateTime> get dateExceptions => List.unmodifiable(_dateExceptions);

  /// List of weekday exceptions
  List<WeekDay> get weekDayExceptions => List.unmodifiable(_weekDayExceptions);

  /// List of month day exceptions
  List<int> get monthDayExceptions => List.unmodifiable(_monthDayExceptions);

  /// Flag enforcing schedule boundaries
  final ValueNotifier<bool> enforceScheduleBounds = ValueNotifier(false);

  // List Management Methods ---------------------------------------------------

  OnUpdatingConstraintsDateTimeExceptions get onUpdating => OnUpdatingConstraintsDateTimeExceptions(
        updatedTimeExceptions: timeRangeExceptions,
        updatedDateExceptions: dateRangeExceptions,
        addedTimeExceptions: timeRangeExceptions
            .where((item) =>
                !getOriginalValue<List<TimeRangeEntity>>(#timeRangeExceptions).contains(item))
            .toList(),
        addedDateExceptions: dateRangeExceptions
            .where((item) =>
                !getOriginalValue<List<DateRangeEntity>>(#dateRangeExceptions).contains(item))
            .toList(),
        deletedTimeExceptions: getOriginalValue<List<TimeRangeEntity>>(#timeRangeExceptions)
            .where((item) => !timeRangeExceptions.contains(item))
            .map((item) => item.id)
            .toList(),
        deletedDateExceptions: getOriginalValue<List<DateRangeEntity>>(#dateRangeExceptions)
            .where((item) => !dateRangeExceptions.contains(item))
            .map((item) => item.id)
            .toList(),
      );

  /// Initializes time range exceptions
  void initTimeRanges(List<TimeRangeEntity> timeRangeExceptions) {
    addToOriginalValues<List<TimeRangeEntity>>(
        #timeRangeExceptions, List.from(timeRangeExceptions));
    _timeRangeExceptions
      ..clear()
      ..addAll(timeRangeExceptions);
    notifyListeners();
  }

  /// Initializes date range exceptions
  void initDateRanges(List<DateRangeEntity> dateRangeExceptions) {
    addToOriginalValues<List<DateRangeEntity>>(
        #dateRangeExceptions, List.from(dateRangeExceptions));
    _dateRangeExceptions
      ..clear()
      ..addAll(dateRangeExceptions);
    notifyListeners();
  }

  /// Adds a time range exception
  void addToTimeRangeExceptions(TimeRangeEntity timeException) {
    _timeRangeExceptions.add(timeException);
    processModification(#timeRangeExceptions, _timeRangeExceptions);
  }

  /// Removes a time range exception
  void removeFromTimeRangeExceptions(TimeRangeEntity timeRangeExceptions) {
    _timeRangeExceptions.remove(timeRangeExceptions);
    processModification(#timeRangeExceptions, _timeRangeExceptions);
  }

  /// Adds a date range exception
  void addToDateRangeExceptions(DateRangeEntity dateRangeExceptions) {
    _dateRangeExceptions.add(dateRangeExceptions);
    processModification(#dateRangeExceptions, _dateRangeExceptions);
  }

  /// Removes a date range exception
  void removeFromDateRangeExceptions(DateRangeEntity dateRangeExceptions) {
    _dateRangeExceptions.remove(dateRangeExceptions);
    processModification(#dateRangeExceptions, _dateRangeExceptions);
  }

  /// Adds a date exception
  void modifyDateExceptions(List<DateTime> dates) {
    _dateExceptions
      ..clear()
      ..addAll(dates);
    processModification(#dateExceptions, _dateExceptions);
  }

  /// Removes a date exception
  void removeFromDateExceptions(DateTime date) {
    _dateExceptions.remove(date);
    processModification(#dateExceptions, _dateExceptions);
  }

  /// Modifys weekday exceptions
  void modifyWeekDayExceptions(List<WeekDay> weekDayExceptions) {
    _weekDayExceptions
      ..clear()
      ..addAll(weekDayExceptions);
    processModification(#weekDayExceptions, _weekDayExceptions);
  }

  /// Removes a weekday exception
  void removeFromWeekDayExceptions(WeekDay weekDayExceptions) {
    _weekDayExceptions.remove(weekDayExceptions);
    processModification(#weekDayExceptions, _weekDayExceptions);
  }

  /// Adds a month day exception
  void modifyMonthDayExceptions(List<int> monthDayExceptions) {
    _monthDayExceptions
      ..clear()
      ..addAll(monthDayExceptions);
    processModification(#monthDayExceptions, _monthDayExceptions);
  }

  /// Removes a month day exception
  void removeFromMonthDayExceptions(int monthDayExceptions) {
    _monthDayExceptions.remove(monthDayExceptions);
    processModification(#monthDayExceptions, _monthDayExceptions);
  }

  // Conversion & Validation ---------------------------------------------------

  @override
  ScheduleConstraintsEntity get toEntity => ScheduleConstraintsEntity(
        id: getOriginalValue<String?>(#id),
        userId: userId,
        createdAt: getCreatedAt,
        updatedAt: getUpdatedAt,
        description: description,
        taskId: taskId,
        startAt: startAt,
        endAt: endAt,
        enforceScheduleBounds: enforceScheduleBounds.value,
        timeRangeExceptionIds: _timeRangeExceptions.map((item) => item.id).toList(),
        dateRangeExceptionIds: _dateRangeExceptions.map((item) => item.id).toList(),
        weekDayExceptions: weekDayExceptions,
        monthDayExceptions: monthDayExceptions,
        dateExceptions: dateExceptions,
      );

  @override
  bool get isValid => description.isNotEmpty;

  // Private fields ------------------------------------------------------------
  late DateTime? _startAt;
  late DateTime? _endAt;

  final List<TimeRangeEntity> _timeRangeExceptions = [];

  final List<DateRangeEntity> _dateRangeExceptions = [];

  final List<DateTime> _dateExceptions = [];

  final List<WeekDay> _weekDayExceptions = [];

  final List<int> _monthDayExceptions = [];
}
