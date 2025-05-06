import 'package:flutter/material.dart';

extension DurationX on Duration {
  DateTime toDateTimeForDate(DateTime date) {
    final totalMinutes = inMinutes;
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;

    return DateTime(
      date.year,
      date.month,
      date.day,
      hours,
      minutes,
    );
  }

  TimeOfDay toDayTime() => TimeOfDay(hour: inMinutes ~/ 60, minute: inMinutes % 60);
}
