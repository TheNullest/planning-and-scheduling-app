extension DateTimeExtensions on DateTime {
  /// Converts `DateTime` to a formatted string (e.g., "2025-04-24 14:30").
  String get toDateString {
    final date =
        '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
    return date;
  }

  String get toDateTimeString {
    final time = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
    return '$toDateString $time';
  }

  /// Extracts the date as a string (e.g., "2025-04-24").
  String get formattedDate {
    return '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  /// Extracts the time as a string (e.g., "14:30").
  String get formattedTime {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  /// Checks if the `DateTime` is today.
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Checks if the `DateTime` is in the past.
  bool get isPast => isBefore(DateTime.now());

  /// Checks if the `DateTime` is in the future.
  bool get isFuture => isAfter(DateTime.now());

  /// Returns the difference in days between this `DateTime` and another.
  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  bool isAtSameDate(DateTime other) => differenceInDays(other) == 0;

  bool overlapsWith({required DateTime startDate, required DateTime endDate}) =>
      isAfter(startDate) && isBefore(endDate);
}
