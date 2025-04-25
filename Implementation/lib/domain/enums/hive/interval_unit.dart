import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'interval_unit.g.dart';

/// Represents time interval units with corresponding Persian translations for UI display.
///
/// This enum is used for specifying units of time (such as when scheduling durations),
/// and provides both English and Persian representations. It is designed for UI purposes only.
///
/// **Example Usage:**
/// ```dart
/// print(IntervalUnit.hours.name);             // Output: "Hours"
/// print(IntervalUnit.hours.nameInPersian);      // Output: "ساعت"
/// print(IntervalUnit.fromName("days"));         // Output: IntervalUnit.days
/// print(IntervalUnit.fromIndex(2, inPersian: true)); // Output: "هفته"
/// ```
@HiveType(typeId: 110)
enum IntervalUnit {
  /// Represents hours as an interval unit.
  @HiveField(0)
  hours('ساعت'),

  /// Represents days as an interval unit.
  @HiveField(1)
  days('روز'),

  /// Represents weeks as an interval unit.
  @HiveField(2)
  weeks('هفته'),

  /// Represents months as an interval unit.
  @HiveField(3)
  months('ماه');

  /// Constructs an [IntervalUnit] with its Persian translation.
  const IntervalUnit(this._inPersian);

  /// The Persian representation used for UI display.
  final String _inPersian;

  /// Retrieves an [IntervalUnit] by its English name.
  /// Comparison is case-insensitive.
  ///
  /// **Example:**
  /// ```dart
  /// print(IntervalUnit.fromName("weeks")); // Output: IntervalUnit.weeks
  /// ```
  static IntervalUnit fromName(String name) {
    return IntervalUnit.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The IntervalUnit "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using the index of the [IntervalUnit].
  /// Throws an exception if the index is invalid.
  ///
  /// **Example:**
  /// ```dart
  /// print(IntervalUnit.fromIndex(1)); // Output: "Days"
  /// print(IntervalUnit.fromIndex(1, inPersian: true)); // Output: "روز"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= IntervalUnit.values.length) {
      throw Exception('The IntervalUnit index $index is not valid.');
    }
    final item = IntervalUnit.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  ///
  /// It extracts the enum's value from its string representation and applies [toSentenceCase()].
  ///
  /// **Example:**
  /// ```dart
  /// print(IntervalUnit.months.name); // Output: "Months"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for UI display.
  ///
  /// **Example:**
  /// ```dart
  /// print(IntervalUnit.days.nameInPersian); // Output: "روز"
  /// ```
  String get nameInPersian => _inPersian;
}
