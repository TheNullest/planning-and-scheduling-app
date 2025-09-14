import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/presentation_shared/models/mixinn/list_item_state_mixin.dart';

/// A **ViewModel** representing a configurable time range
/// (e.g., `08:00–10:00`) used for scheduling, constraints,
/// and UI-based time selection.
///
/// ✅ Core Responsibility: Manage start-end times and persistence data.
/// ❌ No scheduling or repetition logic (handled by [ScheduleTimeRangeVm]).
class TimeRangeVm extends ChangeNotifier with ListItemStateMixin {
  // ─────────────────────────────────────────────
  // 🔸 Constructors
  // ─────────────────────────────────────────────

  TimeRangeVm({
    required this.startTime,
    required this.endTime,
    String? id,
    DateTime? createdAt,
    this.updatedAt,
    this.description,
  })  : id = id ?? uuidGenerator,
        createdAt = createdAt ?? DateTime.now();

  TimeRangeVm.init()
      : id = '',
        createdAt = DateTime.now(),
        updatedAt = null,
        description = '',
        startTime = const TimeOfDay(hour: 8, minute: 0),
        endTime = const TimeOfDay(hour: 9, minute: 0);

  TimeRangeVm.fromEntity(TimeRangeEntity entity)
      : id = entity.id,
        createdAt = entity.createdAt,
        updatedAt = entity.updatedAt,
        startTime = entity.start.toDayTime,
        endTime = entity.end.toDayTime,
        description = entity.description {
    markAsPersisted();
  }

  /// Builds from a [ScheduledDayTimeEntity].
  ///
  /// Converts time fields using `toDayTime` extension and marks persisted state.
  TimeRangeVm.fromScheduledDayTimeEntity(ScheduledDayTimeEntity entity)
      : id = entity.id,
        createdAt = entity.createdAt,
        updatedAt = entity.updatedAt,
        startTime = entity.startTime.toDayTime,
        endTime = entity.endTime.toDayTime,
        description = entity.description {
    markAsPersisted();
  }

  /// Builds from a [ScheduledOccurrenceEntity] (fixed date schedule).
  ///
  /// Converts the start/end [DateTime]s into [TimeOfDay] values.
  TimeRangeVm.fromScheduledFixedDateEntity(ScheduledOccurrenceEntity entity)
      : id = entity.id,
        createdAt = entity.createdAt,
        updatedAt = entity.updatedAt,
        startTime = entity.startDateTime.toDayTime,
        endTime = entity.endDateTime.toDayTime,
        description = entity.description {
    markAsPersisted();
  }

  // ---------------------------------------------------------------------------
  // 🔸 Static Converters
  // ---------------------------------------------------------------------------

  /// Converts this [TimeRangeVm] into a [ScheduleTimeRangeVm].
  ///
  /// You can optionally override [scheduleType], [timeMode], and [repeatCount].
  ScheduleTimeRangeVm toScheduleTimeRangeVm({
    ScheduleType? scheduleType,
    ScheduledTimeMode? timeMode,
    int repeatCount = 0,
  }) =>
      ScheduleTimeRangeVm(
        id: id,
        startTime: startTime,
        endTime: endTime,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
        scheduleType: scheduleType ?? ScheduleType.fixedDate,
        timeMode: timeMode ?? ScheduledTimeMode.fixed,
        repeatCount: repeatCount,
      );

  /// Converts this [ScheduleTimeRangeVm] into a plain [TimeRangeVm],
  /// removing scheduling-specific metadata.
  TimeRangeVm toTimeRangeVm() => TimeRangeVm(
        id: id,
        startTime: startTime,
        endTime: endTime,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  /// Converts a list of [TimeRangeVm]s back into a list of [TimeRangeEntity]s.
  ///
  /// Each entity is linked to a [parentId] (e.g., schedule or constraint group)
  /// and [userId] (creator or owner).
  /// [description] acts as a fallback description if a VM doesn't have one.
  static List<TimeRangeEntity> toTimeRangeEntities({
    required List<TimeRangeVm>? timeRangeVms,
    required String parentId,
    required String userId,
    required String description,
  }) {
    if (timeRangeVms == null || timeRangeVms.isEmpty) return const [];
    return timeRangeVms
        .map((vm) => vm.toEntity(parentId, userId, description))
        .toList(growable: false);
  }

  /// Converts a list of [TimeRangeEntity] objects into a list of [TimeRangeVm]s.
  ///
  /// Returns an empty list if [entities] is null or empty.
  static List<TimeRangeVm> fromTimeRangeEntities(List<TimeRangeEntity>? entities) {
    if (entities == null || entities.isEmpty) return const [];
    return entities.map(TimeRangeVm.fromEntity).toList(growable: false);
  }

  /// Converts a list of [ScheduledDayTimeEntity] objects into [TimeRangeVm]s.
  ///
  /// Typically used for **recurring (weekday/monthday)** schedules.
  static List<TimeRangeVm> fromDayTimeEntities(List<ScheduledDayTimeEntity>? entities) {
    if (entities == null || entities.isEmpty) return const [];
    return entities.map(TimeRangeVm.fromScheduledDayTimeEntity).toList(growable: false);
  }

  /// Converts a list of [ScheduledOccurrenceEntity] objects into [TimeRangeVm]s.
  ///
  /// Typically used for **fixed-date** schedules.
  static List<TimeRangeVm> fromOccurrenceEntities(List<ScheduledOccurrenceEntity>? entities) {
    if (entities == null || entities.isEmpty) return const [];
    return entities.map(TimeRangeVm.fromScheduledFixedDateEntity).toList(growable: false);
  }

  /// Performs a unified conversion from *any* entity type into a [TimeRangeVm].
  ///
  /// Automatically detects the entity type at runtime and maps it accordingly.
  /// Unknown types are skipped safely.
  static List<TimeRangeVm> fromDynamicList(List<dynamic>? source) {
    if (source == null || source.isEmpty) return const [];

    final mapped = source.map((item) {
      if (item is TimeRangeEntity) return TimeRangeVm.fromEntity(item);
      if (item is ScheduledDayTimeEntity) return TimeRangeVm.fromScheduledDayTimeEntity(item);
      if (item is ScheduledOccurrenceEntity) return TimeRangeVm.fromScheduledFixedDateEntity(item);
      return null;
    });

    return mapped.whereType<TimeRangeVm>().toList(growable: false);
  }

  // ─────────────────────────────────────────────
  // 🔸 Fields
  // ─────────────────────────────────────────────

  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String? description;

  // ─────────────────────────────────────────────
  // 🔸 Computed Getters
  // ─────────────────────────────────────────────

  String get label => '${startTime.toDayTimeString} - ${endTime.toDayTimeString}';

  // ─────────────────────────────────────────────
  // 🔸 Conversions
  // ─────────────────────────────────────────────

  TimeRangeEntity toEntity(String parentId, String userId, String description) => TimeRangeEntity(
        id: id,
        parentId: parentId,
        start: startTime.toMinuteAsInt,
        end: endTime.toMinuteAsInt,
        createdAt: createdAt,
        updatedAt: !isNewItem.value && isModified.value ? DateTime.now() : updatedAt,
        userId: userId,
        description: this.description ?? description,
      );

  static List<TimeRangeVm> fromEntities(List<TimeRangeEntity> entities) =>
      entities.map(TimeRangeVm.fromEntity).toList();

  // ─────────────────────────────────────────────
  // 🔸 Copy / Equality
  // ─────────────────────────────────────────────

  bool equals(TimeRangeVm other) =>
      startTime == other.startTime &&
      endTime == other.endTime &&
      isNewItem.value == other.isNewItem.value &&
      isModified.value == other.isModified.value;

  TimeRangeVm copyWith({
    String? id,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    bool markAsNewItem = false,
    bool markAsModified = true,
  }) =>
      TimeRangeVm(
        id: id ?? this.id,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
      )
        ..isNewItem.value = markAsNewItem
        ..isModified.value = markAsModified;
}
