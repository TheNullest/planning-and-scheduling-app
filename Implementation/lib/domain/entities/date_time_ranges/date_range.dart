import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zamaan/core/utils/date_time.dart';
import 'package:zamaan/core/utils/uuid.dart' as uuid;
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';

/// Represents a date range with start & end dates.
/// Serialized with Hive to store it inside Hive-based entities.
class DateRangeEntity {
  DateRangeEntity({
    required this.id,
    this.start,
    this.end,
  });

  factory DateRangeEntity.fromDates(DateTime start, DateTime end) => DateRangeEntity(
        id: uuid.uuidGenerator,
        start: start,
        end: end,
      );

  factory DateRangeEntity.fromTimeRange(TimeRangeEntity time, DateTime date) => DateRangeEntity(
        id: uuid.uuidGenerator,
        start: time.startAsDateTime(date),
        end: time.endAsDateTime(date),
      );

  @HiveField(0)
  final String id;

  /// The start date/time of the range.
  /// If null, the range is considered open-ended at the beginning.
  /// Always store the date in UTC for consistency.
  @HiveField(1)
  final DateTime? start;

  /// The end date/time of the range.
  /// If null, this implies that the range may be ongoing or unbounded.
  /// Always store the date in UTC for consistency.
  @HiveField(2)
  final DateTime? end;

  /// Returns duration between start and end times.
  /// If `end` is `null`, calculates duration until **now (`DateTime.now()`)**.
  Duration get duration => (end ?? DateTime.now()).difference(start!);

  /// Extracts the **time** (hour & minute) portion from `start` as `TimeOfDay`.
  TimeOfDay get startTime => TimeOfDay.fromDateTime(start!);

  /// Extracts the **time** (hour & minute) portion from `end` as `TimeOfDay`, if `end` exists.
  TimeOfDay? get endTime => end != null ? TimeOfDay.fromDateTime(end!) : null;

  /// Validates all range properties
  bool get isValid =>
      uuid.isValidUUID(id) &&
      (end == null || start!.isBefore(end!) || start!.isAtSameMomentAs(end!));

  /// Returns true if this range contains [date]
  bool overlapsWith(DateTime date) =>
      isWithinDates(currentDate: date, fromDate: start, toDate: end);

  DateRangeEntity copyWith({
    String? id,
    DateTime? start,
    DateTime? end,
  }) =>
      DateRangeEntity(
        id: id ?? this.id,
        start: start ?? this.start,
        end: end ?? this.end,
      );
}
