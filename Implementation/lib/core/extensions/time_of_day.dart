import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  /// Converts `TimeOfDay` to a formatted string (e.g., "14:30").
  String toFormattedString() {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  int toInt() => hour * 60 + minute;


  DateTime toDateTime(DateTime date) {
    return DateTime(date.year, date.month, date.day, hour, minute);
  }
}
