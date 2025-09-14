import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/mixinn/original_values_tracker_mixin.dart';

part 'extensions/selection_manager_extension.dart';
part 'extensions/actions_manager_extension.dart';
part 'selection_manager_mixin.dart';

class ScheduleUpsertManagerVm extends ChangeNotifier
    with OriginalValuesTrackerMixin, SelectionManagerMixin {
  ScheduleUpsertManagerVm(
      {required this.taskId,
      required this.userId,
      required List<ScheduleTimeGroupVm> scheduledFixedDates,
      required List<ScheduleTimeGroupVm> scheduledWeekDays,
      required List<ScheduleTimeGroupVm> scheduledMonthDays})
      : _scheduledFixedDates = scheduledFixedDates,
        _scheduledWeekDays = scheduledWeekDays,
        _scheduledMonthDays = scheduledMonthDays {
    addToOriginalValues(#scheduledFixedDates, scheduledFixedDates);
    addToOriginalValues(#scheduledWeekDays, scheduledWeekDays);
    addToOriginalValues(#scheduledMonthDays, scheduledMonthDays);
  }

  final String taskId;
  final String userId;

  /// Manually triggers a change notification to all UI listeners.
  ///
  /// This is a thin wrapper around [notifyListeners] used by submodules to
  /// maintain consistent update semantics.
  void _callNotifyListener() => notifyListeners();

  late bool _isGlobalSettingsEnabled = false;
  bool get isGlobalSettingsEnabled => _isGlobalSettingsEnabled;
  set isGlobalSettingsEnabled(bool value) {
    _isGlobalSettingsEnabled = value;

    notifyListeners();
  }

  String globalDescription = '';

  int globalRepeatCount = 0;

  ScheduledTimeMode globalTimeMode = ScheduledTimeMode.fixed;

  void resetGlobalOptions() {
    globalDescription = '';
    globalRepeatCount = 0;
    globalTimeMode = ScheduledTimeMode.fixed;
  }

  final List<ScheduleTimeGroupVm> _scheduledFixedDates;
  List<ScheduleTimeGroupVm> get scheduledFixedDates => List.unmodifiable(_scheduledFixedDates);
  void addScheduledFixedDate(ScheduleTimeGroupVm scheduledFixedDates) {
    _scheduledFixedDates.add(scheduledFixedDates);
    processChanges(#scheduledFixedDates, _scheduledFixedDates);
  }

  void removeScheduledFixedDate(ScheduleTimeGroupVm scheduledFixedDates) {
    _scheduledFixedDates.remove(scheduledFixedDates);
    processChanges(#scheduledFixedDates, _scheduledFixedDates);
  }

  final List<ScheduleTimeGroupVm> _scheduledWeekDays;
  List<ScheduleTimeGroupVm> get scheduledWeekDays => List.unmodifiable(_scheduledWeekDays);
  void addScheduledWeekDay(ScheduleTimeGroupVm scheduledWeekDays) {
    _scheduledWeekDays.add(scheduledWeekDays);
    processChanges(#scheduledWeekDays, _scheduledWeekDays);
  }

  void removeScheduledWeekDay(ScheduleTimeGroupVm scheduledWeekDays) {
    _scheduledWeekDays.remove(scheduledWeekDays);
    processChanges(#scheduledWeekDays, _scheduledWeekDays);
  }

  final List<ScheduleTimeGroupVm> _scheduledMonthDays;
  List<ScheduleTimeGroupVm> get scheduledMonthDays => List.unmodifiable(_scheduledMonthDays);
  void addScheduledMonthDay(ScheduleTimeGroupVm scheduledMonthDays) {
    _scheduledMonthDays.add(scheduledMonthDays);
    processChanges(#scheduledMonthDays, _scheduledMonthDays);
  }

  void removeScheduledMonthDay(ScheduleTimeGroupVm scheduledMonthDays) {
    _scheduledMonthDays.remove(scheduledMonthDays);
    processChanges(#scheduledMonthDays, _scheduledMonthDays);
  }

  @override
  bool get isValid => true;

  @override
  void resetValues() {
    // TODO: implement resetValues
  }

  void onDayTimesDeleted(List<String> ids) {
    _scheduledWeekDays
        .expand((group) => group.timeRanges)
        .toList()
        .removeWhere((item) => ids.contains(item.id));
    updateOriginalValue(#scheduledWeekDays, _scheduledWeekDays);

    _scheduledMonthDays
        .expand((group) => group.timeRanges)
        .toList()
        .removeWhere((item) => ids.contains(item.id));
    updateOriginalValue(#scheduledMonthDays, _scheduledMonthDays);

    notifyListeners();
  }

  void onFixedDatesDeleted(List<String> ids) {
    _scheduledFixedDates
        .expand((group) => group.timeRanges)
        .toList()
        .removeWhere((item) => ids.contains(item.id));
    updateOriginalValue(#scheduledFixedDates, _scheduledFixedDates);

    notifyListeners();
  }
}
