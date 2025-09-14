import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';

part 'schedule_type.g.dart';

/// Defines the **recurrence classification** of a schedule entry —
/// such as a specific date, recurring weekdays, month days, or intervals.
///
/// Each enum value includes a Persian translation for localization purposes,
/// along with helper methods to:
/// - Retrieve values by name or index.
/// - Convert between [`DayType`] and [`ScheduleType`].
/// - Format labels for UI presentation.
///
/// This enum is persisted using Hive and used extensively in ViewModels
/// for identifying and displaying the schedule type.
///
/// ---
////
/// ### Example
/// ```dart
/// print(ScheduleType.recurringWeekDays.name);          // "RecurringWeekDays"
/// print(ScheduleType.recurringWeekDays.nameInPersian); // "روز هفته"
/// print(ScheduleType.fromName("monthDays"));           // ScheduleType.recurringMonthDays
/// print(ScheduleType.fromIndex(1, inPersian: true));   // "روز ماه"
/// ```
@HiveType(typeId: EnumHiveTypeIds.scheduleType)
enum ScheduleType {
  /// A schedule that occurs on a **specific, non-repeating date**.
  @HiveField(0)
  fixedDate('تاریخ'),

  /// A schedule that repeats every **week** on selected weekdays.
  @HiveField(1)
  recurringWeekDays('روز هفته'),

  /// A schedule that repeats every **month** on specific day numbers (e.g., 5th, 15th).
  @HiveField(2)
  recurringMonthDays('روز ماه'),

  /// A schedule that repeats at defined **intervals** (e.g., every 3 days, every 2 weeks).
  @HiveField(3)
  recurringIntervals('بازه تکرار');

  /// Internal constructor with its Persian translation.
  const ScheduleType(this._inPersian);

  /// Persian representation (localized name).
  final String _inPersian;

  // ---------------------------------------------------------------------------
  // 🔍 Retrieval Utilities
  // ---------------------------------------------------------------------------

  /// Retrieves a [ScheduleType] instance by its **name**, case-insensitive.
  ///
  /// Throws an [Exception] if no matching value exists.
  ///
  /// Example:
  /// ```dart
  /// final type = ScheduleType.fromName("monthDays");
  /// print(type); // ScheduleType.recurringMonthDays
  /// ```
  static ScheduleType fromName(String name) {
    return ScheduleType.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The ScheduleType "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name by its **index**.
  ///
  /// Throws an [Exception] if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduleType.fromIndex(1)); // "RecurringWeekDays"
  /// print(ScheduleType.fromIndex(1, inPersian: true)); // "روز هفته"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= ScheduleType.values.length) {
      throw Exception('Invalid ScheduleType index: $index');
    }
    final type = ScheduleType.values[index];
    return inPersian ? type._inPersian : type.name;
  }

  /// Converts a [DayType] value into its corresponding [ScheduleType].
  ///
  /// This method provides a bridge between *day-based recurrence definitions*
  /// (represented by [DayType]) and their *higher-level scheduling semantics*
  /// (represented by [ScheduleType]).
  ///
  /// Used primarily when mapping day selectors (e.g., weekdays, month days)
  /// to their respective schedule group types.
  ///
  /// Example:
  /// ```dart
  /// final scheduleType = ScheduleType.fromDayType(DayType.weekDay);
  /// print(scheduleType); // ScheduleType.recurringWeekDays
  /// ```
  static ScheduleType fromDayType(DayType type) {
    switch (type) {
      case DayType.weekDay:
        return ScheduleType.recurringWeekDays;
      case DayType.monthDay:
        return ScheduleType.recurringMonthDays;
      case DayType.fixedDate:
        return ScheduleType.fixedDate;
    }
  }

  
  // ---------------------------------------------------------------------------
  // 🧭 Display Utilities
  // ---------------------------------------------------------------------------

  /// Returns the **formatted enum name** with proper capitalization.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduleType.recurringMonthDays.name); // "RecurringMonthDays"
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the **Persian display name** used in localized UI contexts.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduleType.recurringMonthDays.nameInPersian); // "روز ماه"
  /// ```
  String get nameInPersian => _inPersian;

  /// Generates a **human-readable label** for a given [label] string,
  /// formatted according to the schedule type.
  ///
  /// - For `fixedDate`: returns a localized date with weekday (e.g., `"Tue, 2025/10/14"`).
  /// - For `recurringWeekDays`: returns the label as-is (e.g., `"Monday"`).
  /// - For `recurringMonthDays`: appends ordinal suffix (e.g., `"14"` → `"14th"`).
  /// - For `recurringIntervals`: *Not yet implemented.*
  ///
  /// This is typically used in ViewModels or UI builders
  /// to create display-friendly labels from stored schedule data.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduleType.fixedDate.getFormattedLabel("2025/10/14"));  // "Tuesday, 2025/10/14"
  /// print(ScheduleType.recurringMonthDays.getFormattedLabel("14")); // "14th"
  /// ```
  String getFormattedLabel(String label) {
    switch (this) {
      case ScheduleType.fixedDate:
        return label.toDateStringWithWeekDay;
      case ScheduleType.recurringWeekDays:
        return label;
      case ScheduleType.recurringMonthDays:
        return label.getMonthDayWithOrdinalSuffix;
      case ScheduleType.recurringIntervals:
        throw UnimplementedError('Formatting not implemented for recurring intervals.');
    }
  }

  /// Converts this [ScheduleType] to its corresponding [DayType], when applicable.
  ///
  /// Throws [UnimplementedError] for types that do not map to a day concept.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduleType.recurringWeekDays.getDayType); // DayType.weekDay
  /// ```
  DayType get getDayType => switch (this) {
        ScheduleType.fixedDate => throw UnimplementedError('FixedDate has no DayType equivalent.'),
        ScheduleType.recurringWeekDays => DayType.weekDay,
        ScheduleType.recurringMonthDays => DayType.monthDay,
        ScheduleType.recurringIntervals =>
          throw UnimplementedError('Intervals have no DayType equivalent.'),
      };
}
