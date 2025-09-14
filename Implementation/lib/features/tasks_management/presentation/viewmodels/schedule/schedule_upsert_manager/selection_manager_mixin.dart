part of 'schedule_upsert_manager_vm.dart';

mixin SelectionManagerMixin on ChangeNotifier {
  final ValueNotifier<bool> isSelectionMode = ValueNotifier<bool>(false);
  late int _selectedItemsCount = 0;
  int get selectedItemsCount => _selectedItemsCount;

  final ValueNotifier<bool?> isWeeklySchedulesSelected = ValueNotifier<bool?>(false);
  final ValueNotifier<bool?> isMonthlySchedulesSelected = ValueNotifier<bool?>(false);
  final ValueNotifier<bool?> isFixedDateSchedulesSelected = ValueNotifier<bool?>(false);
  final ValueNotifier<bool?> isIntervalSchedulesSelected = ValueNotifier<bool?>(false);

  bool? getSelectionValue(ScheduleType type) {
    switch (type) {
      case ScheduleType.fixedDate:
        return isFixedDateSchedulesSelected.value;
      case ScheduleType.recurringWeekDays:
        return isWeeklySchedulesSelected.value;
      case ScheduleType.recurringMonthDays:
        return isMonthlySchedulesSelected.value;
      case ScheduleType.recurringIntervals:
        return isIntervalSchedulesSelected.value;
    }
  }

  ValueNotifier<bool?> getSelectionNotifier(ScheduleType type) {
    switch (type) {
      case ScheduleType.fixedDate:
        return isFixedDateSchedulesSelected;
      case ScheduleType.recurringWeekDays:
        return isWeeklySchedulesSelected;
      case ScheduleType.recurringMonthDays:
        return isMonthlySchedulesSelected;
      case ScheduleType.recurringIntervals:
        return isIntervalSchedulesSelected;
    }
  }

  final _softRemovedWeekMonthDayTimes = <String>[];
  List<String> get softRemovedWeekMonthDayTimes => _softRemovedWeekMonthDayTimes;

  final _softRemovedFixedDates = <String>[];
  List<String> get softRemovedFixedDates => _softRemovedFixedDates;

}
