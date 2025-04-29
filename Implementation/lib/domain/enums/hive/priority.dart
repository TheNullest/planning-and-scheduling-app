import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'priority.g.dart';

/// Represents the priority levels with Persian translations for UI display.
/// This enum is strictly for UI purposes and **not intended for database storage**.
///
/// Example Usage:
/// ```dart
/// print(Priority.optional.name);         // Output: "Optional"
/// print(Priority.optional.nameInPersian);  // Output: "دلخواه"
/// print(Priority.fromName("low"));         // Output: Priority.low
/// print(Priority.fromIndex(3, inPersian: true)); // Output: "بالا"
/// ```
@HiveType(typeId: EnumHiveTypeIds.priority)
enum Priority {
  @HiveField(0)
  optional('دلخواه'),

  @HiveField(1)
  low('پایین'),

  @HiveField(2)
  medium('میانی'),

  @HiveField(3)
  high('بالا'),

  @HiveField(4)
  critical('بحرانی');

  /// Constructs a [Priority] with its Persian translation.
  const Priority(this._inPersian);

  /// The Persian representation used for UI display.
  final String _inPersian;

  /// Retrieves a [Priority] by its English name.
  /// Comparison is case-insensitive.
  ///
  /// Example:
  /// ```dart
  /// print(Priority.fromName("medium")); // Output: Priority.medium
  /// ```
  static Priority fromName(String name) {
    return Priority.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The Priority "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(Priority.fromIndex(2)); // Output: "Medium"
  /// print(Priority.fromIndex(2, inPersian: true)); // Output: "میانی"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= Priority.values.length) {
      throw Exception('The Priority index $index is not valid.');
    }
    final item = Priority.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  /// It extracts the enum value from the string and then applies [toSentenceCase()].
  ///
  /// Example:
  /// ```dart
  /// print(Priority.high.name); // Output: "High"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for UI display.
  ///
  /// Example:
  /// ```dart
  /// print(Priority.critical.nameInPersian); // Output: "بحرانی"
  /// ```
  String get nameInPersian => _inPersian;
}
