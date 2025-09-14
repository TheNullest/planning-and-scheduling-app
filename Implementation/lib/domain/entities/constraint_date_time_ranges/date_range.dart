import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zamaan/core/utils/date_time.dart';
import 'package:zamaan/core/utils/uuid.dart' as uuid;
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';

/// Represents a date range with start & end dates.
/// Serialized with Hive to store it inside Hive-based entities.
class DateRangeEntity extends BaseEntityAbstraction {
  DateRangeEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.parentId,
    required this.startDate,
    required this.endDate,
    super.description,
    super.updatedAt,
  });

  factory DateRangeEntity.fromDates({
    required DateTime start,
    required DateTime end,
    required String userId,
    required String parentId,
  }) =>
      DateRangeEntity(
        id: uuid.uuidGenerator,
        startDate: start,
        parentId: parentId,
        endDate: end,
        createdAt: DateTime.now(),
        userId: userId,
      );

  factory DateRangeEntity.fromTimeRange(TimeRangeEntity time, DateTime date) => DateRangeEntity(
        id: uuid.uuidGenerator,
        startDate: time.startAsDateTime(date),
        endDate: time.endAsDateTime(date),
        parentId: time.parentId,
        createdAt: DateTime.now(),
        userId: time.userId,
      );

  /// The start date/time of the range.
  /// If null, the range is considered open-ended at the beginning.
  /// Always store the date in UTC for consistency.
  @HiveField(11)
  final DateTime? startDate;

  /// The end date/time of the range.
  /// If null, this implies that the range may be ongoing or unbounded.
  /// Always store the date in UTC for consistency.
  @HiveField(12)
  final DateTime? endDate;

  @HiveField(13)
  final String parentId;

  /// Returns duration between start and end times.
  /// If `end` is `null`, calculates duration until **now (`DateTime.now()`)**.
  Duration get duration => (endDate ?? DateTime.now()).difference(startDate!);

  /// Extracts the **time** (hour & minute) portion from `start` as `TimeOfDay`.
  TimeOfDay get startTime => TimeOfDay.fromDateTime(startDate!);

  /// Extracts the **time** (hour & minute) portion from `end` as `TimeOfDay`, if `end` exists.
  TimeOfDay? get endTime => endDate != null ? TimeOfDay.fromDateTime(endDate!) : null;

  /// Validates all range properties
  bool get isValid =>
      uuid.isValidUUID(id) &&
      (endDate == null || startDate!.isBefore(endDate!) || startDate!.isAtSameMomentAs(endDate!));

  /// Returns true if this range contains [date]
  bool overlapsWith(DateTime date) =>
      isWithinDates(currentDate: date, fromDate: startDate, toDate: endDate);

  @override
  DateRangeEntity copyWith({
    String? id,
    DateTime? start,
    DateTime? end,
    DateTime? createdAt,
    String? userId,
    String? parentId,
  }) =>
      DateRangeEntity(
        id: id ?? this.id,
        startDate: start ?? startDate,
        endDate: end ?? endDate,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        parentId: parentId ?? this.parentId,
      );
}
