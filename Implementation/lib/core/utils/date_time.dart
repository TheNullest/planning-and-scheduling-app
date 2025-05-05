import 'package:zamaan/presentation_shared/enums/interval_unit.dart';

/// Creates a new [DateTime] object containing only the year, month, and day components.
/// Strips time information by returning a date at midnight in the local time zone.
/// Useful for date-based comparisons ignoring time values.
///
/// Example:
/// ```dart
/// DateTime fullDateTime = DateTime(2025, 4, 20, 14, 30);  // 2025-04-20 14:30:00
/// DateTime dateOnly = justDate(fullDateTime);
/// print(dateOnly);  // 2025-04-20 00:00:00.000
/// ```
DateTime justDate(DateTime date) => DateTime(date.year, date.month, date.day);

/// Creates a UTC-based [DateTime] from date components, discarding time information.
/// Returns a date at midnight in UTC, ideal for consistent date storage and comparison
/// across different time zones.
///
/// Example:
/// ```dart
/// DateTime localDate = DateTime(2025, 4, 20, 10, 45);  // Local timezone
/// DateTime utcDate = justDateUTC(localDate);
/// print(utcDate);  // 2025-04-20 00:00:00.000Z
/// ```
DateTime justDateUTC(DateTime date) => DateTime(date.year, date.month, date.day).toUtc();

/// Checks if [currentDate] falls within an inclusive range between [fromDate] and [toDate].
/// Handles null bounds by:
/// - Defaulting [fromDate] to [currentDate] when null
/// - Defaulting [toDate] to [currentDate] when null
/// Time components are ignored in comparisons.
///
/// Example:
/// ```dart
/// DateTime current = DateTime(2025, 4, 22);
/// bool withinRange = isBetweenDates(
///   currentDate: current,
///   fromDate: DateTime(2025, 4, 20),
///   toDate: DateTime(2025, 4, 25)
/// );
/// print(withinRange);  // true
/// ```
bool isWithinDates({
  required DateTime currentDate,
  DateTime? fromDate,
  DateTime? toDate,
}) {
  final effectiveFrom = justDate(fromDate ?? currentDate);
  final effectiveTo = justDate(toDate ?? currentDate);
  final checkDate = justDate(currentDate);

  return checkDate.compareTo(effectiveFrom) >= 0 && checkDate.compareTo(effectiveTo) <= 0;
}

int compareDates({
  DateTime? past,
  DateTime? future,
}) {
  if (past == null) {
    return 1;
  } else if (future == null) {
    return -1;
  } else {
    final pastDate = justDate(past);
    final futureDate = justDate(future);

    return pastDate.compareTo(futureDate);
  }
}

/// Generates a PostgreSQL-compatible `date_trunc` SQL expression for timestamp grouping.
/// Truncates timestamps to specified [IntervalUnit] for aggregate queries.
///
/// Valid units correspond to PostgreSQL's date_trunc parameters:
/// https://www.postgresql.org/docs/current/functions-datetime.html#FUNCTIONS-DATETIME-TRUNC
///
/// Example:
/// ```dart
/// final query = toDateTruncQuery("created_at", unit: TimeUnit.month);
/// print(query);  // date_trunc('month', created_at)
/// ```
String toDateTruncQuery(String field, {IntervalUnit unit = IntervalUnit.day}) =>
    'date_trunc("${unit.name}", $field)';
