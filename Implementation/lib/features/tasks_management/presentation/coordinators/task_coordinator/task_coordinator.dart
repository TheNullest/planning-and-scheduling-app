import 'dart:collection';

import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';

part 'batch_crud_operations_on_task.dart';
part 'single_crud_operations_on_task.dart';

/// Aggregates all data and scheduling dependencies related to a single [TaskEntity].
///
/// ## Purpose
/// * Provide a **single access point** to all information required to fully
///   represent a task, including:
///   - its subtasks,
///   - scheduling rules,
///   - exceptions,
///   - classification (categories & tags),
///   - and linked goals.
/// * Simplify UI rendering by avoiding multiple nested getes when building
///   task details, lists, or scheduling views.
/// * Offer controlled mutation methods (`add…`, `remove…`, `update…`) for safe
///   modification of internal lists.
///
/// ## Notes
/// * This is a **data aggregator**, not a scheduler.
/// * `scheduledFixDateTimes` are **fixed, one-off scheduled occurrences**.
/// * `scheduledDayTimes` and `scheduledIntervales` describe **recurring
///   schedule** such as selected weekdays or repeating intervals.
/// * `cats`, `tags`, and `goals` provide classification and high-level
///   relationships for analytics or filtering.
class TaskCoordinator {
  /// Creates a fully populated [TaskCoordinator] with all dependencies.
  TaskCoordinator({
    required this.task,
    required List<SubTaskEntity> subTasks,
    List<ScheduledDayTimeEntity>? scheduledDayTimes,
    List<ScheduledIntervalEntity>? scheduledIntervales,
    List<ScheduledOccurrenceEntity>? scheduledFixDateTimes,
    List<GoalEntity>? goals,
  })  : _subTasks = List<SubTaskEntity>.from(subTasks),
        _scheduledDayTimes = List<ScheduledDayTimeEntity>.from(scheduledDayTimes ?? const []),
        _scheduledIntervales = List<ScheduledIntervalEntity>.from(scheduledIntervales ?? const []),
        _scheduledFixDateTimes =
            List<ScheduledOccurrenceEntity>.from(scheduledFixDateTimes ?? const []),
        _goals = List<GoalEntity>.from(goals ?? const []);

  /// Convenience constructor when only the task and its subtasks are initially known.
  TaskCoordinator.basic({
    required TaskEntity task,
    required List<SubTaskEntity> subTasks,
  }) : this(task: task, subTasks: subTasks);

  // ── Core Entities ──────────────────────────────────────────────
  TaskEntity task;

  // ── Internal lists ─────────────────────────────────────────────
  List<SubTaskEntity> _subTasks;
  List<ScheduledDayTimeEntity> _scheduledDayTimes;
  List<ScheduledIntervalEntity> _scheduledIntervales;
  List<ScheduledOccurrenceEntity> _scheduledFixDateTimes;
  List<GoalEntity> _goals; // Goals linked to the task or its subtasks.

  // ── Public getters (read-only lists) ───────────────────────────
  UnmodifiableListView<SubTaskEntity> get subTasks => UnmodifiableListView(_subTasks);

  UnmodifiableListView<ScheduledDayTimeEntity> get scheduledDayTimes =>
      UnmodifiableListView(_scheduledDayTimes);
  UnmodifiableListView<ScheduledIntervalEntity> get scheduledIntervales =>
      UnmodifiableListView(_scheduledIntervales);
  UnmodifiableListView<ScheduledOccurrenceEntity> get scheduledFixDateTimes =>
      UnmodifiableListView(_scheduledFixDateTimes);

  /// Goals linked to this task or any of its subtasks.
  UnmodifiableListView<GoalEntity> get goals => UnmodifiableListView(_goals);

  /// Returns a new immutable snapshot of this coordinator’s current data.
  TaskCoordinator copyWith({
    TaskEntity? task,
    List<SubTaskEntity>? subTasks,
    ScheduleConstraintsEntity? constraint,
    List<DateRangeEntity>? exceptionDateRanges,
    List<TimeRangeEntity>? exceptionTimeRanges,
    List<ScheduledDayTimeEntity>? scheduledDayTimes,
    List<ScheduledIntervalEntity>? scheduledIntervales,
    List<ScheduledOccurrenceEntity>? scheduledFixDateTimes,
    List<GoalEntity>? goals,
  }) {
    return TaskCoordinator(
      task: task ?? this.task,
      subTasks: subTasks ?? List<SubTaskEntity>.from(_subTasks),
      scheduledDayTimes: scheduledDayTimes ?? List<ScheduledDayTimeEntity>.from(_scheduledDayTimes),
      scheduledIntervales:
          scheduledIntervales ?? List<ScheduledIntervalEntity>.from(_scheduledIntervales),
      scheduledFixDateTimes:
          scheduledFixDateTimes ?? List<ScheduledOccurrenceEntity>.from(_scheduledFixDateTimes),
      goals: goals ?? List<GoalEntity>.from(_goals),
    );
  }
}
