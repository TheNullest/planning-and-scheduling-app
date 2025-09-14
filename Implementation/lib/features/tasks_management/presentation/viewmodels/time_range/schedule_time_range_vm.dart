import 'package:flutter/material.dart' show TimeOfDay;
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/occurrence_status.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart';

import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';

/// A **specialized ViewModel** extending [TimeRangeVm] for handling scheduled time data.
///
/// Adds scheduling context such as [scheduleType], [timeMode], and [repeatCount].
///
/// Commonly used for tasks, recurrences, and date-based scheduling.
class ScheduleTimeRangeVm extends TimeRangeVm {
  // ─────────────────────────────────────────────
  // 🔸 Constructors
  // ─────────────────────────────────────────────

  ScheduleTimeRangeVm({
    required super.startTime,
    required super.endTime,
    required this.scheduleType,
    required this.timeMode,
    required this.repeatCount,
    super.id,
    super.createdAt,
    super.updatedAt,
    super.description,
  });

  /// Initializes a default instance with sample values for UI prefill.
  ScheduleTimeRangeVm.init()
      : scheduleType = ScheduleType.fixedDate,
        timeMode = ScheduledTimeMode.fixed,
        repeatCount = 0,
        super.init();

  factory ScheduleTimeRangeVm.fromTimeRangeVm(
    TimeRangeVm baseVm, {
    required ScheduleType scheduleType,
    required ScheduledTimeMode timeMode,
    int repeatCount = 0,
  }) =>
      ScheduleTimeRangeVm(
        id: baseVm.id,
        startTime: baseVm.startTime,
        endTime: baseVm.endTime,
        description: baseVm.description,
        createdAt: baseVm.createdAt,
        updatedAt: baseVm.updatedAt,
        scheduleType: scheduleType,
        timeMode: timeMode,
        repeatCount: repeatCount,
      );

  /// Builds from a [ScheduledDayTimeEntity].
  ScheduleTimeRangeVm.fromScheduledDayTimeEntity(super.entity)
      : scheduleType = ScheduleType.fromDayType(entity.dayType),
        timeMode = entity.timeMode,
        repeatCount = entity.repeatCount,
        super.fromScheduledDayTimeEntity();

  /// Builds from a [ScheduledOccurrenceEntity].
  ScheduleTimeRangeVm.fromScheduledOccurrenceEntity(super.entity)
      : scheduleType = ScheduleType.fixedDate,
        timeMode = entity.timeMode,
        repeatCount = 0,
        super.fromScheduledFixedDateEntity();

  // ─────────────────────────────────────────────
  // 🔸 Fields
  // ─────────────────────────────────────────────

  final ScheduleType scheduleType;
  final ScheduledTimeMode timeMode;
  final int repeatCount;

  // ─────────────────────────────────────────────
  // 🔸 Entity Conversions
  // ─────────────────────────────────────────────

  ScheduledDayTimeEntity toScheduledDayTimeEntity({
    required String taskId,
    required String userId,
    required String dayLabel,
    required DayType dayType,
    required String? description,
    required int? repeatCount,
    required ScheduledTimeMode? timeMode,
  }) =>
      ScheduledDayTimeEntity(
        id: id,
        userId: userId,
        createdAt: createdAt,
        updatedAt: isNewItem.value ? null : DateTime.now(),
        description: description ?? this.description,
        taskId: taskId,
        dayType: dayType,
        dayLabel: dayLabel,
        repeatCount: repeatCount ?? this.repeatCount,
        startTime: startTime.toMinuteAsInt,
        endTime: endTime.toMinuteAsInt,
        timeMode: timeMode ?? this.timeMode,
      );

  ScheduledOccurrenceEntity toScheduledFixedDateEntity({
    required String userId,
    required String taskId,
    required DateTime scheduledDate,
    required OccurrenceStatus status,
    String? description,
    ScheduledTimeMode? timeMode,
  }) =>
      ScheduledOccurrenceEntity(
        id: id,
        userId: userId,
        createdAt: createdAt,
        updatedAt: isNewItem.value ? null : DateTime.now(),
        description: this.description ?? description,
        taskId: taskId,
        startDateTime: startTime.toDateTime(scheduledDate),
        endDateTime: endTime.toDateTime(scheduledDate),
        schedulerId: '',
        schedulerType: ScheduleType.fixedDate,
        occurrenceStatus: status,
        sequenceNumber: 0,
        timeMode: timeMode ?? this.timeMode,
      );

  // ─────────────────────────────────────────────
  // 🔸 Batch Conversion Helpers
  // ─────────────────────────────────────────────

  static List<ScheduledDayTimeEntity> toDayTimeEntities(
          {required List<ScheduleTimeRangeVm> timeRangeVms,
          required String taskId,
          required String userId,
          required String dayLabel,
          required DayType dayType,
          required String? description,
          required ScheduledTimeMode? timeMode,
          required int? repeatCount}) =>
      timeRangeVms
          .map((item) => item.toScheduledDayTimeEntity(
              taskId: taskId,
              userId: userId,
              dayLabel: dayLabel,
              dayType: dayType,
              description: description,
              repeatCount: repeatCount,
              timeMode: timeMode))
          .toList();

  static List<ScheduledOccurrenceEntity> toOccurrenceEntities({
    required List<ScheduleTimeRangeVm> timeRangeVms,
    required String taskId,
    required String userId,
    required String dayLabel,
    required String? description,
    required ScheduledTimeMode? timeMode,
  }) =>
      timeRangeVms
          .map((item) => item.toScheduledFixedDateEntity(
              userId: userId,
              taskId: taskId,
              scheduledDate: dayLabel.toDateFromStringWithWeekDay(),
              status: OccurrenceStatus.scheduled,
              description: description,
              timeMode: timeMode))
          .toList();

  static List<ScheduleTimeRangeVm> fromDayTimeEntities(List<ScheduledDayTimeEntity> entities) =>
      entities.map(ScheduleTimeRangeVm.fromScheduledDayTimeEntity).toList();

  static List<ScheduleTimeRangeVm> fromOccurrenceEntities(
          List<ScheduledOccurrenceEntity> entities) =>
      entities.map(ScheduleTimeRangeVm.fromScheduledOccurrenceEntity).toList();

  /// Converts this [TimeRangeVm] into a [ScheduleTimeRangeVm].
  ///
  /// You can optionally override [scheduleType], [timeMode], and [repeatCount].
  ScheduleTimeRangeVm updateTimeRange(TimeRangeVm timeRange) => ScheduleTimeRangeVm(
        id: id,
        startTime: timeRange.startTime,
        endTime: timeRange.endTime,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
        scheduleType: scheduleType,
        timeMode: timeMode,
        repeatCount: repeatCount,
      );

  @override
  ScheduleTimeRangeVm copyWith({
    String? id,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    bool markAsNewItem = false,
    bool markAsModified = true,
    ScheduleType? scheduleType,
    ScheduledTimeMode? timeMode,
    int? repeatCount,
  }) =>
      ScheduleTimeRangeVm(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        scheduleType: scheduleType ?? this.scheduleType,
        timeMode: timeMode ?? this.timeMode,
        repeatCount: repeatCount ?? this.repeatCount,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
      );
}
