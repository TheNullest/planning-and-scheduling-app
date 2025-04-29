import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'week_day.g.dart';

/// Represents the days of the week, with Persian translations for UI.
/// This is strictly for UI purposes and **not intended for database storage**.
///
/// **First day of week**: Monday (دوشنبه).
///
/// Example Usage:
/// ```dart
/// print(WeekDay.monday.name); // Output: "monday"
/// print(WeekDay.monday.nameInPersian); // Output: "دوشنبه"
/// print(WeekDay.fromName("monday")); // Output: WeekDay.monday
/// print(WeekDay.fromIndex(3, inPersian: true)); // Output: "پنج‌شنبه" (Thursday)
/// ```
@HiveType(typeId: EnumHiveTypeIds.weekDay)
enum WeekDay {
  @HiveField(0)
  monday('دوشنبه'),
  @HiveField(1)
  tuesday('سه‌شنبه'),
  @HiveField(2)
  wednesday('چهارشنبه'),
  @HiveField(3)
  thursday('پنج‌شنبه'),
  @HiveField(4)
  friday('جمعه'),
  @HiveField(5)
  saturday('شنبه'),
  @HiveField(6)
  sunday('یکشنبه');

  /// Persian equivalent used for UI display.
  const WeekDay(this._inPersian);
  final String _inPersian;

  /// Retrieves a `WeekDay` by its English name.
  /// Throws an exception if the name is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(WeekDay.fromName("friday")); // Output: WeekDay.friday
  /// ```
  static WeekDay fromName(String name) {
    return WeekDay.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The WeekDay "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(WeekDay.fromIndex(2)); // Output: "Monday"
  /// print(WeekDay.fromIndex(2, inPersian: true)); // Output: "دوشنبه"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= WeekDay.values.length) {
      throw Exception('The WeekDay index $index is not valid.');
    }
    final item = WeekDay.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  static WeekDay fromDateTimeIndex(int index) {
    if (index < 0 || index >= WeekDay.values.length) {
      throw Exception('The WeekDay index $index is not valid.');
    }
    return WeekDay.values[index];
  }

  /// Returns the English name with proper capitalization.
  ///
  /// Example:
  /// ```dart
  /// print(WeekDay.saturday.name); // Output: "Saturday"
  /// ```
  String get name => toString().substring(9).toSentenceCase();

  int get dateTimeWeekDayIndex => index + 1;

  /// Returns the Persian name for UI display.
  ///
  /// Example:
  /// ```dart
  /// print(WeekDay.thursday.nameInPersian); // Output: "پنج‌شنبه"
  /// ```
  String get nameInPersian => _inPersian;
}
