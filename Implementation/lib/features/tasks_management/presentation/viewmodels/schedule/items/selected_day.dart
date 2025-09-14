import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';

class SelectedScheduleGroup {
  SelectedScheduleGroup({required this.type, required this.label});

  final ScheduleType type;
  final String label;

  String get toStringForEntity =>
      type == ScheduleType.recurringWeekDays ? label : label.getMonthDayRemovedOrdinalSuffix;
}
