import 'package:zamaan/domain/enums/enums.dart';

/// Returns a complete set of all possible [WeekDay] values.
///
/// This getter is primarily used to generate UI or ViewModel structures
/// that require representation for every day of the week — such as when
/// initializing scheduling cards or day-based configurations.
///
/// Example:
/// ```dart
/// weekDays.forEach((day) => print(day.name)); // Prints all week day names.
/// ```
Set<WeekDay> get weekDays => Set<WeekDay>.from(WeekDay.values);

/// Returns a complete set of all **month day numbers** from `1` to `31`.
///
/// This getter is useful when initializing scheduling items that repeat
/// monthly — such as reminders, events, or recurring tasks.
///
/// Example:
/// ```dart
/// monthDays.forEach((day) => print('Day $day')); // Prints 1 to 31.
/// ```
Set<int> get monthDays => Set<int>.from(List.generate(31, (index) => index + 1));
