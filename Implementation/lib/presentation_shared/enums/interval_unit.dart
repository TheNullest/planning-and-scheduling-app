import 'package:zamaan/core/extensions/string.dart';

/// Enum representing different time intervals, primarily for UI usage.
/// This is NOT intended for database storage; it only provides user-friendly labels.
///
/// Example Usage:
/// ```dart
/// print(IntervalUnit.minute.name); // Output: "Minute"
/// print(IntervalUnit.minute.nameInPersian); // Output: "دقیقه"
/// print(IntervalUnit.fromName("day")); // Output: IntervalUnit.day
/// print(IntervalUnit.fromIndex(2, inPersian: true)); // Output: "ساعت"
/// ```
enum IntervalUnit {
  minute('دقیقه'),
  hour('ساعت'),
  day('روز'),
  week('هفته'),
  month('ماه'),
  year('سال');

  /// Persian representation for UI display.
  const IntervalUnit(this._inPersian);
  final String _inPersian;

  /// Retrieves an `IntervalUnit` by its name.
  /// Throws an exception if the provided name is not found.
  ///
  /// Example:
  /// ```dart
  /// print(IntervalUnit.fromName("week")); // Output: IntervalUnit.week
  /// ```
  static IntervalUnit fromName(String name) => IntervalUnit.values.firstWhere(
        (e) => e.name == name,
        orElse: () => throw Exception('The TimeUnit is not allowed and defined'),
      );

  /// Retrieves a name or Persian equivalent of an `IntervalUnit` using its index.
  /// Throws an exception if the index is out of range.
  ///
  /// Example:
  /// ```dart
  /// print(IntervalUnit.fromIndex(3)); // Output: "Week"
  /// print(IntervalUnit.fromIndex(3, inPersian: true)); // Output: "هفته"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    final item = IntervalUnit.values.firstWhere(
      (item) => item.index == index,
      orElse: () => throw Exception('The TimeUnit index is not allowed and defined'),
    );
    return inPersian ? item._inPersian : item.name.toSentenceCase();
  }

  /// Retrieves the interval name in English with proper capitalization.
  ///
  /// Example:
  /// ```dart
  /// print(IntervalUnit.minute.name); // Output: "Minute"
  /// ```
  String get name => toString().substring(9).toSentenceCase();

  /// Retrieves the interval name in Persian.
  ///
  /// Example:
  /// ```dart
  /// print(IntervalUnit.month.nameInPersian); // Output: "ماه"
  /// ```
  String get nameInPersian => _inPersian;
}
