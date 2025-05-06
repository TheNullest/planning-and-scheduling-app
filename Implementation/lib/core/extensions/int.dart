import 'package:flutter/material.dart';
import 'package:zamaan/core/utils/date_time.dart';

extension IntX on int {
  Duration toDuration() => Duration(hours: this ~/ 60, minutes: this % 60);
  TimeOfDay toDayTime() => TimeOfDay(hour: this ~/ 60, minute: this % 60);
  DateTime toDateTimeForDate(DateTime date) => justDate(date).add(toDuration());
}
