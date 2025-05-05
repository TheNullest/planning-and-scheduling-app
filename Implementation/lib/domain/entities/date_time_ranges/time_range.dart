import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/uuid.dart' as uuid show isValidUUID;

/// Represents a time range with start & optional end time.
/// If `end` is null, it assumes an ongoing range until **now** (`TimeOfDay.now()`).
class TimeRangeEntity {
  TimeRangeEntity({
    required this.id,
    TimeOfDay? start,
    TimeOfDay? end,
  })  : start = start ?? const TimeOfDay(hour: 0, minute: 0),
        end = end ?? const TimeOfDay(hour: 23, minute: 59) {
    // Validate that start comes before end (if that makes sense in your domain).
    final startMinutes = this.start.hour * 60 + this.start.minute;
    final endMinutes = this.end.hour * 60 + this.end.minute;
    if (startMinutes >= endMinutes) {
      throw ArgumentError('The start time must be before the end time.');
    }
  }

  @HiveField(0)
  final String id;

  @HiveField(1)
  final TimeOfDay start;

  @HiveField(2)
  final TimeOfDay end;

  /// Returns the duration between start and end times.
  /// If `end` is null, calculates duration until **now (`TimeOfDay.now()`)**.
  Duration get duration {
    final actualEnd = end;
    return _difference(start, actualEnd);
  }

  /// Helper function to calculate the difference between two `TimeOfDay` instances.
  static Duration _difference(TimeOfDay start, TimeOfDay end) {
    final startMinutes = start.hour * 60 + start.minute;
    final endMinutes = end.hour * 60 + end.minute;
    return Duration(minutes: endMinutes - startMinutes);
  }

  /// Converts `TimeOfDay` to `DateTime` using a provided date.
  DateTime startAsDateTime(DateTime date) => start.toDateTime(date);

  /// Converts `TimeOfDay` to `DateTime` for `end`, using a provided date.
  /// If `end` is null, returns `DateTime.now()`.
  DateTime endAsDateTime(DateTime date) => end.toDateTime(date);

  /// Validates the time range
  bool get isValid =>
      uuid.isValidUUID(id) && start.hour < end.hour ||
      (start.hour == end.hour && start.minute <= end.minute);

  /// Checks if a [time] falls within this range
  bool overlapsWith(TimeOfDay time) {
    final startMinutes = start.hour * 60 + start.minute;
    final endMinutes = end.hour * 60 + end.minute;
    final timeMinutes = time.hour * 60 + time.minute;

    return timeMinutes >= startMinutes && timeMinutes <= endMinutes;
  }

  TimeRangeEntity copyWith({
    String? id,
    TimeOfDay? start,
    TimeOfDay? end,
  }) =>
      TimeRangeEntity(
        id: id ?? this.id,
        start: start ?? this.start,
        end: end ?? this.end,
      );
}
