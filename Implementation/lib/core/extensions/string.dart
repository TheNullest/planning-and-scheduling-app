import 'package:flutter/material.dart';

extension StringExtensions on String {
  String toSentenceCase() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Converts a string in the "HH:mm" format into a [TimeOfDay] object.
  ///
  /// Example:
  ///   '14:30'.toTimeOfDay() // returns TimeOfDay(hour: 14, minute: 30)
  TimeOfDay toTimeOfDay() {
    final parts = split(':');
    if (parts.length != 2) {
      throw const FormatException('Invalid time format. Expected "HH:mm".');
    }
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }
}
