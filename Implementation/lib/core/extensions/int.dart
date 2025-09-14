import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/date_time.dart';

extension IntX on int {
  Duration get toDuration => Duration(hours: this ~/ 60, minutes: this % 60);
  TimeOfDay get toDayTime => TimeOfDay(hour: this ~/ 60, minute: this % 60);
  DateTime toDateTimeForDate(DateTime date) => justDate(date).add(toDuration);
  String get toDayTimeString => toDayTime.toDayTimeString;

  String get getMonthDayWithOrdinalSuffix {
    if (this >= 11 && this <= 13) return '${this}th';
    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }
}
