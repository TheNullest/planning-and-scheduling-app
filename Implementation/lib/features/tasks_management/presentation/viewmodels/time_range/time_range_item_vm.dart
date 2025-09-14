import 'package:flutter/material.dart' show TimeOfDay;
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';

/// Represents a **lightweight, UI-friendly ViewModel** for a specific time range segment
/// — e.g. `08:00–10:00` — used across scheduling, selection, and visualization workflows.
///
/// Serves as the **presentation-layer abstraction** for domain entities like:
/// - [ScheduledDayTimeEntity] (recurring day-based schedules)
/// - [ScheduledOccurrenceEntity] (fixed-date occurrences)
///
/// By converting raw [DateTime] values to [TimeOfDay], this model provides
/// a widget-ready representation for time pickers, day cards, or timeline-based UIs.
///
/// ---
/// ### 🔹 Core Responsibilities
/// - Maintain a unique [id] for mapping or diffing entities across updates.
/// - Encapsulate start and end times using [TimeOfDay] for direct UI binding.
/// - Provide fast conversion utilities from domain entities or other VMs.
/// - Offer formatted string labels for effortless UI rendering.
///
/// ---
/// ### 🧩 Example
/// ```dart
/// final vm = TimeRangeItemVm(
///   id: 'abc123',
///   startTime: const TimeOfDay(hour: 8, minute: 0),
///   endTime: const TimeOfDay(hour: 10, minute: 0),
/// );
///
/// print(vm.getLabel); // "08:00 - 10:00"
/// ```
class TimeRangeItemVm {
  /// Creates a new [TimeRangeItemVm] instance.
  TimeRangeItemVm({
    required this.id,
    required this.startTime,
    required this.endTime,
    this.description,
  });

  // ───────────────────────────────
  // ▪️ Factory Constructors
  // ───────────────────────────────

  /// Creates a [TimeRangeItemVm] from a [ScheduledDayTimeEntity].
  ///
  /// Converts entity `DateTime` values to [TimeOfDay] for UI-level manipulation.
  TimeRangeItemVm.fromDayTimeEntity(ScheduledDayTimeEntity dayTime)
      : startTime = dayTime.startTime.toDayTime,
        endTime = dayTime.endTime.toDayTime,
        description = dayTime.description,
        id = dayTime.id;

  /// Creates a [TimeRangeItemVm] from a [ScheduledOccurrenceEntity].
  ///
  /// Transforms `DateTime` start and end values into [TimeOfDay] objects suitable
  /// for form widgets or inline editors.
  TimeRangeItemVm.fromOccurrenceEntity(ScheduledOccurrenceEntity occurrence)
      : startTime = occurrence.startDateTime.toDayTime,
        endTime = occurrence.endDateTime.toDayTime,
        description = occurrence.description,
        id = occurrence.id;


  /// Batch conversion from multiple [ScheduledDayTimeEntity] items.
  static List<TimeRangeItemVm> fromDayTimeEntities(List<ScheduledDayTimeEntity> entities) =>
      entities.map(TimeRangeItemVm.fromDayTimeEntity).toList();

  /// Batch conversion from multiple [ScheduledOccurrenceEntity] items.
  static List<TimeRangeItemVm> fromOccurrenceEntities(List<ScheduledOccurrenceEntity> entities) =>
      entities.map(TimeRangeItemVm.fromOccurrenceEntity).toList();

  // ───────────────────────────────
  // ▪️ Core Fields
  // ───────────────────────────────

  /// Unique identifier linking this VM to its source entity or UI element.
  final String id;

  /// The starting time of this range (e.g. `08:00`).
  final TimeOfDay startTime;

  /// The ending time of this range (e.g. `10:00`).
  final TimeOfDay endTime;

  /// Optional description or user-defined note associated with this range.
  final String? description;

  // ───────────────────────────────
  // ▪️ Static Builders
  // ───────────────────────────────

  /// Builds a list of [TimeRangeItemVm]s from [TimeRangeVm] view models.
  ///
  /// Optionally excludes one element via [selectedId] — typically used when validating
  /// overlapping ranges without self-comparison.
  static List<TimeRangeItemVm> fromTimeRangeVms(List<TimeRangeVm> items, [String? selectedId]) {
    final filtered = List<TimeRangeVm>.from(items);
    if (selectedId != null) filtered.removeWhere((item) => item.id == selectedId);

    return filtered
        .map(
          (item) => TimeRangeItemVm(
            id: item.id,
            startTime: item.startTime,
            endTime: item.endTime,
          ),
        )
        .toList();
  }

  /// Converts a list of domain-level [TimeRangeEntity]s into presentation-level VMs.
  static List<TimeRangeItemVm> fromTimeRangeEntities(List<TimeRangeEntity> items) => items
      .map(
        (item) => TimeRangeItemVm(
          id: item.id,
          startTime: item.start.toDayTime,
          endTime: item.end.toDayTime,
        ),
      )
      .toList();

  // ───────────────────────────────
  // ▪️ Utilities
  // ───────────────────────────────

  /// Returns a formatted, display-ready label such as `"08:00 - 10:00"`.
  String get getLabel => '${startTime.toDayTimeString} - ${endTime.toDayTimeString}';

  /// Returns a copy of this instance with optionally updated values.
  ///
  /// ---
  /// ### Example
  /// ```dart
  /// final updated = original.copyWith(
  ///   endTime: const TimeOfDay(hour: 11, minute: 0),
  /// );
  /// ```
  TimeRangeItemVm copyWith({
    String? scheduledDayTimeEntityId,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    String? description,
  }) {
    return TimeRangeItemVm(
      id: scheduledDayTimeEntityId ?? id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      description: description ?? this.description,
    );
  }
}
