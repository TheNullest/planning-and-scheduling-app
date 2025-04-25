import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'measurement_category.g.dart';

/// Represents measurement categories with Persian translations for UI display.
/// This enum is strictly for UI purposes and **not intended for database storage**.
///
/// Example Usage:
/// ```dart
/// print(MeasurementCategory.length.name);         // Output: "Length"
/// print(MeasurementCategory.length.nameInPersian);  // Output: "طول"
/// print(MeasurementCategory.fromName("mass"));    // Output: MeasurementCategory.mass
/// print(MeasurementCategory.fromIndex(2, inPersian: true)); // Output: "مساحت"
/// ```
@HiveType(typeId: 101)
enum MeasurementCategory {
  @HiveField(0)
  length('طول'),

  @HiveField(1)
  mass('جرم'),

  @HiveField(2)
  area('مساحت'),

  @HiveField(3)
  time('زمان'),

  @HiveField(4)
  currency('ارز'),

  @HiveField(5)
  volume('حجم'),

  @HiveField(6)
  count('تعداد'), // Newly added category for countable units.

  @HiveField(7)
  custom('اختیاری');

  /// Constructs a [MeasurementCategory] with its Persian translation.
  const MeasurementCategory(this._inPersian);

  /// The Persian representation used for UI display.
  final String _inPersian;

  /// Retrieves a [MeasurementCategory] by its English name.
  /// Comparison is case-insensitive.
  ///
  /// Example:
  /// ```dart
  /// print(MeasurementCategory.fromName("mass")); // Output: MeasurementCategory.mass
  /// ```
  static MeasurementCategory fromName(String name) {
    return MeasurementCategory.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The MeasurementCategory "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(MeasurementCategory.fromIndex(2)); // Output: "Area"
  /// print(MeasurementCategory.fromIndex(2, inPersian: true)); // Output: "مساحت"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= MeasurementCategory.values.length) {
      throw Exception('The MeasurementCategory index $index is not valid.');
    }
    final item = MeasurementCategory.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  /// Extracts the enum value from the string and then applies [toSentenceCase()].
  ///
  /// Example:
  /// ```dart
  /// print(MeasurementCategory.currency.name); // Output: "Currency"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for UI display.
  ///
  /// Example:
  /// ```dart
  /// print(MeasurementCategory.custom.nameInPersian); // Output: "اختیاری"
  /// ```
  String get nameInPersian => _inPersian;
}
