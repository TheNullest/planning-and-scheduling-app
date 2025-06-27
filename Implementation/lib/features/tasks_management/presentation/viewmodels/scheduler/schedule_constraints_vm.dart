import 'package:flutter/widgets.dart';
import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class ScheduleConstraintsVm extends BaseViewModel<ScheduleConstraintEntity> {
  ScheduleConstraintsVm({required super.userId}) : super(viewModelTitle: 'Schedule');

  ScheduleConstraintsVm.fromEntity(
      {required super.entity,
      required List<TimeRangeEntity> exceptionTimes,
      required List<DateRangeEntity> exceptionDates})
      : super(userId: entity!.userId, viewModelTitle: 'Schedule') {
    addToOriginalValues<List<TimeRangeEntity>>(#exceptionTimeIds, List.from(exceptionTimes));
    addToOriginalValues<List<DateRangeEntity>>(#exceptionDateIds, List.from(exceptionDates));
    _exceptionTimesList.addAll(exceptionTimes);
    _exceptionDatesList.addAll(exceptionDates);
  }

  @override
  void initialize([ScheduleConstraintEntity? entity]) {
    originalValues.clear();
    if (entity != null) {
      _taskId = entity.taskId;
      addToOriginalValues<DateTime?>(#startAt, entity.startAt);
      addToOriginalValues<DateTime?>(#endAt, entity.endAt);
      addToOriginalValues<List<TimeRangeEntity>>(#exceptionTimeIds, List.from(_exceptionTimesList));
      addToOriginalValues<List<DateRangeEntity>>(#exceptionDateIds, List.from(_exceptionDatesList));
      addToOriginalValues<List<WeekDay>>(#exceptionWeekDays, entity.exceptionWeekDays);
      addToOriginalValues<List<int>>(#exceptionMonthDays, entity.exceptionMonthDays);
      addToOriginalValues<bool>(#enforceScheduleBounds, entity.enforceScheduleBounds);
    } else {
      addToOriginalValues<DateTime?>(#startAt, null);
      addToOriginalValues<DateTime?>(#endAt, null);
      addToOriginalValues<List<String>>(#exceptionTimeIds, []);
      addToOriginalValues<List<String>>(#exceptionDateIds, []);
      addToOriginalValues<List<WeekDay>>(#exceptionWeekDays, []);
      addToOriginalValues<List<int>>(#exceptionMonthDays, []);
      addToOriginalValues<bool>(#enforceScheduleBounds, true);
    }

    _startAt = getOriginalValue<DateTime?>(#startAt);
    _endAt = getOriginalValue<DateTime?>(#endAt);

    _exceptionWeekDaysList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<WeekDay>>(#exceptionWeekDays)));

    _exceptionMonthDaysList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<int>>(#exceptionMonthDays)));

    enforceScheduleBounds.value = getOriginalValue<bool>(#enforceScheduleBounds);

    super.initialize(entity);
  }

  late String _taskId;
  set taskId(String id) => _taskId = id;

  late DateTime? _startAt;
  DateTime? get startAt => _startAt;
  set startAt(DateTime? value) {
    _startAt = value;
    notifyListeners();
  }

  late DateTime? _endAt;
  DateTime? get endAt => _endAt;
  set endAt(DateTime? value) {
    _endAt = value;
    notifyListeners();
  }

  final List<TimeRangeEntity> _exceptionTimesList = [];
  bool _exceptionTimesListIsUpdated = false;
  bool get exceptionTimesListIsUpdated => _exceptionTimesListIsUpdated;
  List<TimeRangeEntity> get exceptionTimesList => _exceptionTimesList;

  void addToExceptionTimes(TimeRangeEntity exceptionTimes) {
    _exceptionTimesList.add(exceptionTimes);
    _exceptionTimesListIsUpdated = !_exceptionTimesListIsUpdated;
    notifyListeners();
  }

  void removeFromExceptionTimes(TimeRangeEntity exceptionTimes) {
    _exceptionTimesList.remove(exceptionTimes);
    _exceptionTimesListIsUpdated = !_exceptionTimesListIsUpdated;
    notifyListeners();
  }

  final List<DateRangeEntity> _exceptionDatesList = [];
  bool _exceptionDatesListIsUpdated = false;
  bool get exceptionDatesListIsUpdated => _exceptionDatesListIsUpdated;
  List<DateRangeEntity> get exceptionDatesList => _exceptionDatesList;
  void addToExceptionDates(DateRangeEntity exceptionDates) {
    _exceptionDatesList.add(exceptionDates);
    _exceptionDatesListIsUpdated = !_exceptionDatesListIsUpdated;
    notifyListeners();
  }

  void removeFromExceptionDates(DateRangeEntity exceptionDates) {
    _exceptionDatesList.remove(exceptionDates);
    _exceptionDatesListIsUpdated = !_exceptionDatesListIsUpdated;
    notifyListeners();
  }

  final List<WeekDay> _exceptionWeekDaysList = [];
  bool _exceptionWeekDaysListIsUpdated = false;

  bool get exceptionWeekDaysListIsUpdated => _exceptionWeekDaysListIsUpdated;

  List<WeekDay> get exceptionWeekDaysList => _exceptionWeekDaysList;

  void addToExceptionWeekDays(WeekDay exceptionWeekDays) {
    _exceptionWeekDaysList.add(exceptionWeekDays);
    _exceptionWeekDaysListIsUpdated = !_exceptionWeekDaysListIsUpdated;
    notifyListeners();
  }

  void removeFromExceptionWeekDays(WeekDay exceptionWeekDays) {
    _exceptionWeekDaysList.remove(exceptionWeekDays);
    _exceptionWeekDaysListIsUpdated = !_exceptionWeekDaysListIsUpdated;
    notifyListeners();
  }

  final List<int> _exceptionMonthDaysList = [];
  bool _excenptionMontDaysListIsUpdated = false;
  bool get excenptionMontDaysListIsUpdated => _excenptionMontDaysListIsUpdated;
  List<int> get excenptionMontDaysList => _exceptionMonthDaysList;
  void addToExcenptionMontDays(int excenptionMontDays) {
    _exceptionMonthDaysList.add(excenptionMontDays);
    _excenptionMontDaysListIsUpdated = !_excenptionMontDaysListIsUpdated;
    notifyListeners();
  }

  void removeFromExcenptionMontDays(int excenptionMontDays) {
    _exceptionMonthDaysList.remove(excenptionMontDays);
    _excenptionMontDaysListIsUpdated = !_excenptionMontDaysListIsUpdated;
    notifyListeners();
  }

  final ValueNotifier<bool> enforceScheduleBounds = ValueNotifier(false);

  @override
  void resetValues() {
    _startAt = getOriginalValue<DateTime?>(#startAt);
    _endAt = getOriginalValue<DateTime?>(#endAt);

    _exceptionTimesList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<TimeRangeEntity>>(#exceptionTimes)));

    _exceptionDatesList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<DateRangeEntity>>(#exceptionDates)));

    _exceptionWeekDaysList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<WeekDay>>(#exceptionWeekDays)));

    _exceptionMonthDaysList
      ..clear()
      ..addAll(List.from(getOriginalValue<List<int>>(#exceptionMonthDays)));

    enforceScheduleBounds.value = getOriginalValue<bool>(#enforceScheduleBounds);
    super.resetValues();
  }

  @override
  ScheduleConstraintEntity get toEntity => ScheduleConstraintEntity(
      id: getOriginalValue<String?>(#id),
      userId: userId,
      createdAt: getCreatedAt,
      updatedAt: getUpdatedAt,
      description: description,
      taskId: _taskId,
      enforceScheduleBounds: enforceScheduleBounds.value,
      exceptionTimeIds: _exceptionTimesList.map((item) => item.id).toList(),
      exceptionDateIds: _exceptionDatesList.map((item) => item.id).toList(),
      exceptionWeekDays: _exceptionWeekDaysList,
      exceptionMonthDays: excenptionMontDaysList);

  ScheduleConstraintAggregate get getScheduleConstraintAggregate => ScheduleConstraintAggregate(
      scheduleConstraint: toEntity,
      exceptionTimes: _exceptionTimesList,
      exceptionDates: exceptionDatesList);

  @override
  bool get isValid => description.isNotEmpty;
}
