import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';

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

  /// Returns the string representation of this number
  /// with the appropriate English ordinal suffix (`st`, `nd`, `rd`, `th`).
  ///
  /// For example:
  /// ``` dart
  /// '1'.getMonthDayWithOrdinalSuffix   → '1st'
  /// '2'.getMonthDayWithOrdinalSuffix   → '2nd'
  /// '3'.getMonthDayWithOrdinalSuffix   → '3rd'
  /// '4'.getMonthDayWithOrdinalSuffix   → '4th'
  /// '21'.getMonthDayWithOrdinalSuffix  → '21st'
  /// ```
  ///
  /// Throws a [FormatException] if the string cannot be parsed as an integer.
  String get getMonthDayWithOrdinalSuffix =>
      int.tryParse(this)?.getMonthDayWithOrdinalSuffix ?? 'null';

  /// Removes English ordinal suffixes (`st`, `nd`, `rd`, `th`) from the string.
  ///
  /// This is useful for converting strings like `'21st'` or `'3rd day'`
  /// back into their numeric form or a cleaner textual representation.
  ///
  /// Example:
  /// ``` dart
  /// '21st'.getMonthDayRemovedOrdinalSuffix      → '21'
  /// '3rd day'.getMonthDayRemovedOrdinalSuffix   → '3 day'
  /// 'It’s the 4th time'.getMonthDayRemovedOrdinalSuffix → 'It’s the 4 time'
  /// ```
  ///
  /// Case-insensitive — will remove both lowercase and uppercase suffixes.
  String get getMonthDayRemovedOrdinalSuffix {
    final regex = RegExp(r'(\d+)(st|nd|rd|th)\b', caseSensitive: false);
    return replaceAllMapped(regex, (match) => match.group(1)!);
  }

  /// Converts a date string (in ISO 8601 format) to a human-readable
  /// date string that includes the weekday name.
  ///
  /// Example:
  /// ```dart
  /// final result = "2025-10-14".toDateStringWithWeekday;
  /// print(result); // "Tuesday, 2025/10/14"
  /// ```
  ///
  /// Throws a [FormatException] if the string cannot be parsed as a [DateTime].
  String get toDateStringWithWeekDay =>
      DateTime.parse(replaceAll('/', '-')).toDateStringWithWeekDay;

  /// Parses a date string in the format `yyyy/MM/dd`
  /// back into a [DateTime] instance.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTimeExtensions.fromDateString('2025/04/24');
  /// print(date); // 2025-04-24 00:00:00.000
  /// ```
  DateTime toDate([TimeOfDay? time]) {
    final parts = split('/');
    if (parts.length != 3) {
      throw const FormatException('Invalid date format. Expected yyyy/MM/dd');
    }

    final year = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final day = int.parse(parts[2]);
    final hour = time?.hour ?? 0;
    final minute = time?.minute ?? 0;
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
    );
  }

  /// Parses a date string with weekday prefix, like `Thursday, 2025/04/24`,
  /// back into a [DateTime].
  ///
  /// Example:
  /// ```dart
  /// final date = DateTimeExtensions.fromDateStringWithWeekDay('Thursday, 2025/04/24');
  /// print(date); // 2025-04-24 00:00:00.000
  /// ```
  DateTime toDateFromStringWithWeekDay([TimeOfDay? time]) {
    final parts = split(',').last.trim(); // "2025/04/24"
    return parts.toDate(time);
  }
}
