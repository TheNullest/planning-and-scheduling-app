import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'goal_constraint.g.dart';

/// Represents goal constraints with Persian translations for UI display.
/// This enum is strictly for UI purposes and **not intended for database storage**.
///
/// Example Usage:
/// ```dart
/// print(GoalConstraint.min.name);         // Output: "Minimum"
/// print(GoalConstraint.min.nameInPersian);  // Output: "کمینه"
/// print(GoalConstraint.fromName("step"));    // Output: GoalConstraint.step
/// print(GoalConstraint.fromIndex(5, inPersian: true)); // Output: "مرحله‌ای"
/// ```
@HiveType(typeId: 100)
enum GoalConstraint {
  @HiveField(0)
  min('کمینه'), // Minimum required value

  @HiveField(1)
  max('بیشینه'), // Maximum allowed value

  @HiveField(2)
  exact('دقیق'), // Exact value required

  @HiveField(3)
  range('محدوده'), // Range-based constraint

  @HiveField(4)
  approx('تقریبی'), // Approximate value (doesn't need to be exact)

  @HiveField(5)
  percent('درصد'), // Goal defined in percentage terms

  @HiveField(6)
  step('مرحله‌ای'); // Incremental goal (e.g., increase by 10 per week)

  /// Constructs a [GoalConstraint] with its Persian translation.
  const GoalConstraint(this._inPersian);

  /// The Persian representation used for UI display.
  final String _inPersian;

  /// Retrieves a [GoalConstraint] by its English name.
  /// Comparison is case-insensitive.
  ///
  /// Example:
  /// ```dart
  /// print(GoalConstraint.fromName("approx")); // Output: GoalConstraint.approx
  /// ```
  static GoalConstraint fromName(String name) {
    return GoalConstraint.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The GoalConstraint "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(GoalConstraint.fromIndex(4)); // Output: "Approximate"
  /// print(GoalConstraint.fromIndex(4, inPersian: true)); // Output: "تقریبی"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= GoalConstraint.values.length) {
      throw Exception('The GoalConstraint index $index is not valid.');
    }
    final item = GoalConstraint.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  /// Extracts the enum value from the string and applies [toSentenceCase()].
  ///
  /// Example:
  /// ```dart
  /// print(GoalConstraint.percent.name); // Output: "Percentage"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for UI display.
  ///
  /// Example:
  /// ```dart
  /// print(GoalConstraint.step.nameInPersian); // Output: "مرحله‌ای"
  /// ```
  String get nameInPersian => _inPersian;
}
