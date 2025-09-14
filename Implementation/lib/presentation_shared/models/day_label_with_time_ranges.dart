import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';

/// A lightweight data model pairing a day label with its associated time ranges.
///
/// This class is typically used to represent a summarized view of scheduled
/// time ranges for a specific day — such as "Monday" or "14th of the month".
///
/// ---
/// ### Core Responsibilities
/// - Holds a [dayLabel] that identifies the day (weekday, month day, or date).
/// - Contains a list of [timeRanges] describing scheduled intervals.
/// - Supports deletion of time ranges by their IDs.
///
/// ---
/// ### Example:
/// ```dart
/// final monday = DayLabelWithTimeRanges(
///   dayLabel: 'Monday',
///   timeRanges: [
///     TimeRangeItemVm(id: '1', startTime: TimeOfDay(hour: 8, minute: 0), endTime: TimeOfDay(hour: 10, minute: 0)),
///     TimeRangeItemVm(id: '2', startTime: TimeOfDay(hour: 14, minute: 0), endTime: TimeOfDay(hour: 16, minute: 0)),
///   ],
/// );
///
/// monday.onDelete(['1']);
/// print(monday.timeRanges.length); // 1
/// ```
class DayLabelWithTimeRanges {
  DayLabelWithTimeRanges({
    required this.dayLabel,
    required this.timeRanges,
  });

  /// A human-readable label representing the day,
  /// e.g., `"Monday"`, `"14th"`, or `"2025/10/14 Tue"`.
  final String dayLabel;

  /// List of time intervals scheduled for this day.
  final List<TimeRangeItemVm> timeRanges;

  /// Removes time ranges from this day’s list based on their [ids].
  void onDelete(List<String> ids) => timeRanges.removeWhere((item) => ids.contains(item.id));
}
