import 'package:flutter/material.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Extension methods that provide additional utility functions for working with [DateTime].
///
/// Includes formatting helpers, comparison logic, and range calculations commonly used
/// in scheduling, calendar, and time management features.
extension DateTimeExtensions on DateTime {
  // ─────────────────────────────────────────────────────────────
  // 🗓️ DATE FORMATTING
  // ─────────────────────────────────────────────────────────────

  /// Returns the date as a formatted string in `yyyy/MM/dd` format.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTime(2025, 4, 24);
  /// print(date.toDateString); // "2025/04/24"
  /// ```
  String get toDateString {
    final date =
        '${year.toString().padLeft(4, '0')}/${month.toString().padLeft(2, '0')}/${day.toString().padLeft(2, '0')}';
    return date;
  }

  /// Returns a formatted string containing the weekday name and date.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTime(2025, 4, 24);
  /// print(date.toDateStringWithWeekDay); // "Thursday, 2025/04/24"
  /// ```
  String get toDateStringWithWeekDay => '${WeekDay.fromIndex(weekday - 1)}, $toDateString';

  /// Returns the date and time as a formatted string in `yyyy/MM/dd HH:mm` format.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTime(2025, 4, 24, 14, 30);
  /// print(date.toDateTimeString); // "2025/04/24 14:30"
  /// ```
  String get toDateTimeString {
    final time = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
    return '$toDateString $time';
  }

  // ─────────────────────────────────────────────────────────────
  // ⏰ TIME EXTRACTION
  // ─────────────────────────────────────────────────────────────

  /// Returns the time portion of this [DateTime] as a [TimeOfDay] object.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTime(2025, 4, 24, 14, 30);
  /// final timeOfDay = date.toDayTime; // TimeOfDay(14:30)
  /// ```
  TimeOfDay get toDayTime => TimeOfDay(hour: hour, minute: minute);

  /// Returns only the time portion of this [DateTime] as a string in `HH:mm` format.
  ///
  /// Example:
  /// ```dart
  /// final date = DateTime(2025, 4, 24, 14, 30);
  /// print(date.toTimeString); // "14:30"
  /// ```
  String get toTimeString {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  // ─────────────────────────────────────────────────────────────
  // 📆 DATE COMPARISONS
  // ─────────────────────────────────────────────────────────────

  /// Returns `true` if this date is the same calendar day as today.
  ///
  /// Example:
  /// ```dart
  /// print(DateTime.now().isToday); // true
  /// ```
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns `true` if this [DateTime] is before the current moment.
  ///
  /// Example:
  /// ```dart
  /// final yesterday = DateTime.now().subtract(const Duration(days: 1));
  /// print(yesterday.isPast); // true
  /// ```
  bool get isPast => isBefore(DateTime.now());

  /// Returns `true` if this [DateTime] is after the current moment.
  ///
  /// Example:
  /// ```dart
  /// final tomorrow = DateTime.now().add(const Duration(days: 1));
  /// print(tomorrow.isFuture); // true
  /// ```
  bool get isFuture => isAfter(DateTime.now());

  // ─────────────────────────────────────────────────────────────
  // 🔢 DATE DIFFERENCES
  // ─────────────────────────────────────────────────────────────

  /// Returns the number of full calendar days between this [DateTime] and [other],
  /// ignoring the time-of-day component (hours, minutes, seconds).
  ///
  /// A positive result means this date is after [other]; a negative result means it is before.
  ///
  /// Example:
  /// ```dart
  /// final a = DateTime(2025, 9, 20);
  /// final b = DateTime(2025, 9, 18);
  /// print(a.differenceInDays(b)); // 2
  /// ```
  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  /// Returns `true` if this [DateTime] falls on the same calendar day as [other].
  ///
  /// Compares only year, month, and day, ignoring the time-of-day.
  ///
  /// Example:
  /// ```dart
  /// final a = DateTime(2025, 9, 18, 8);  // 8 AM
  /// final b = DateTime(2025, 9, 18, 23); // 11 PM
  /// print(a.isAtSameDate(b)); // true
  /// ```
  bool isAtSameDate(DateTime other) => differenceInDays(other) == 0;

  // ─────────────────────────────────────────────────────────────
  // 🔄 DATE RANGE UTILITIES
  // ─────────────────────────────────────────────────────────────

  /// Returns `true` if this date falls strictly between [startDate] and [endDate].
  ///
  /// Example:
  /// ```dart
  /// final target = DateTime(2025, 9, 19);
  /// final isBetween = target.overlapsWith(
  ///   startDate: DateTime(2025, 9, 18),
  ///   endDate: DateTime(2025, 9, 20),
  /// );
  /// print(isBetween); // true
  /// ```
  bool overlapsWith({required DateTime startDate, required DateTime endDate}) =>
      isAfter(startDate) && isBefore(endDate);
}
