import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'day_type.g.dart';

/// Represents different types of days with Persian translations for VM display.
///
/// This enum specifies whether a day is categorized as a weekday or a specific day
/// of the month. It is intended for VM purposes and includes functionality to retrieve
/// values based on name or index.
///
/// **Example Usage:**
/// ```dart
/// print(DayType.weekDay.name);          // Output: "Weekday"
/// print(DayType.weekDay.nameInPersian); // Output: "روز هفته"
/// print(DayType.fromName("monthDay"));  // Output: DayType.monthDay
/// print(DayType.fromIndex(1, inPersian: true)); // Output: "روز ماه"
/// ```
@HiveType(typeId: EnumHiveTypeIds.dayType)
enum DayType {
  /// Represents a weekday.
  @HiveField(0)
  weekDay('روز هفته'),

  /// Represents a specific day of the month.
  @HiveField(1)
  monthDay('روز ماه'),

  /// Represents a specific date.
  @HiveField(2)
  fixedDate('تاریخ');

  /// Constructs a [DayType] with its Persian translation.
  const DayType(this._inPersian);

  /// The Persian representation used for VM display.
  final String _inPersian;

  /// Retrieves a [DayType] by its English name.
  /// Comparison is case-insensitive.
  ///
  /// **Example:**
  /// ```dart
  /// print(DayType.fromName("monthDay")); // Output: DayType.monthDay
  /// ```
  static DayType fromName(String name) {
    return DayType.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The DayType "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// **Example:**
  /// ```dart
  /// print(DayType.fromIndex(1));          // Output: "MonthDay"
  /// print(DayType.fromIndex(1, inPersian: true)); // Output: "روز ماه"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= DayType.values.length) {
      throw Exception('The DayType index $index is not valid.');
    }
    final item = DayType.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  ///
  /// It extracts the enum's value from its string representation and applies [toSentenceCase()].
  ///
  /// **Example:**
  /// ```dart
  /// print(DayType.weekDay.name); // Output: "Weekday"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for VM display.
  ///
  /// **Example:**
  /// ```dart
  /// print(DayType.monthDay.nameInPersian); // Output: "روز ماه"
  /// ```
  String get nameInPersian => _inPersian;

  /// Returns a formatted, human-readable label for a given [dayLabel]
  /// based on the current [DayType].
  ///
  /// - For [DayType.weekDay], the label is returned as-is.
  /// - For [DayType.monthDay], an ordinal suffix is appended (e.g., `"14"` → `"14th"`).
  /// - For [DayType.fixedDate], the date string is converted to a localized format with weekday.
  ///
  /// This method is typically used in view models or presentation layers to display
  /// user-friendly labels corresponding to the [DayType].
  ///
  /// **Example:**
  /// ```dart
  /// print(DayType.weekDay.getFormattedDayLabel('Monday'));     // Output: Monday
  /// print(DayType.monthDay.getFormattedDayLabel('14'));        // Output: 14th
  /// print(DayType.fixedDate.getFormattedDayLabel('2025/10/14')); // "Tuesday, 2025/10/14"
  /// ```
  String getFormattedDayLabel(String dayLabel) {
    switch (this) {
      case DayType.weekDay:
        return dayLabel;
      case DayType.monthDay:
        return dayLabel.getMonthDayWithOrdinalSuffix;
      case DayType.fixedDate:
        return dayLabel.toDateStringWithWeekDay;
    }
  }
}
