import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

/// **Represents a concrete work session (activity log) for a task or subtask.**
///
/// This entity captures the **actual time spent** on a task or subtask,
/// whether it was started manually or triggered by a scheduling system.
///
/// ### Purpose
/// * Record **when work actually started and ended** on a specific task/subtask.
/// * Track **status** (e.g., completed, done late, cancelled).
/// * Optionally link this activity back to a **scheduled schedule** (via
///   [schedulerId] and [schedulerType]) if it was generated from a scheduled occurrence.
/// * Allow context-specific **variable tags** (for example, mood, urgency, or
///   ad-hoc labels) that may differ from the parent task's own tags.
///
/// ### Relation to Scheduled Instances
/// * A `ScheduledOccurrenceEntity` defines **when work is supposed to happen**
///   (the scheduled schedule).
/// * A `TaskActivityEntity` records **what actually happened** — the real
///   work session that took place.
///   Multiple `TaskActivityEntity` records can correspond to a single
///   scheduled occurrence (for example, if a user starts and stops work several
///   times during the scheduled window).
///
/// ### Typical Usage
/// ```dart
/// final activity = TaskActivityEntity(
///   referenceId: "task_123",
///   referenceType: ReferenceType.task,
///   startedAt: DateTime(2023, 10, 15, 14, 0),
///   endedAt: DateTime(2023, 10, 15, 16, 30),
///   variableTagIds: ["urgent"],
///   schedulerId: "sched_789", // optional link to a scheduled occurrence
///   schedulerType: SchedulerType.scheduledDayTime,
///   taskStatus: TaskStatus.completed,
///   id: "activity_456",
///   userId: "user_001",
///   createdAt: DateTime.now(),
///   description: "Client project work session",
/// );
///
/// // Example: compute duration worked
/// final duration = activity.endedAt!.difference(activity.startedAt);
/// print(duration); // 2h 30m
/// ```
///
/// ### Notes
/// * If [schedulerId] is `null`, this activity was **manually started**
///   and is not tied to any pre-defined schedule.
/// * Use [variableTagIds] to tag the specific session with
///   ad-hoc categories (for example “Deep Work” or “Quick Fix”)
///   independent of the task’s permanent tags.
class TaskActivityEntity extends BaseEntityAbstraction {
  TaskActivityEntity({
    required super.userId,
    required super.createdAt,
    required this.referenceId,
    required this.referenceType,
    required this.variableTagIds,
    required this.taskStatus,
    required this.startedAt,
    required super.id,
    this.endedAt,
    this.schedulerId,
    this.schedulerType,
    super.description,
    super.updatedAt,
  });

  /// The ID of the associated task or subtask.
  ///
  /// - When [referenceType] is `task`: links to [TaskEntity.id].
  /// - When [referenceType] is `subtask`: links to [SubTaskEntity.id].
  @HiveField(11)
  final String referenceId;

  /// Indicates whether this activity references a **task** or a **subtask**.
  @HiveField(12)
  final ReferenceType referenceType;

  /// Timestamp when this work session actually began.
  ///
  /// Used for duration calculations and progress tracking.
  @HiveField(13)
  final DateTime startedAt;

  /// Timestamp when this work session ended.
  ///
  /// `null` if the session is still in progress.
  @HiveField(14)
  final DateTime? endedAt;

  /// Ad-hoc or context-specific tags for this specific activity instance.
  ///
  /// These can differ from the parent task’s own tags.
  @HiveField(15)
  final List<String> variableTagIds;

  /// Optional reference to the scheduler definition that triggered this activity.
  ///
  /// `null` if this session was manually created or started outside of any
  /// predefined schedule.
  @HiveField(16)
  final String? schedulerId;

  /// Type of scheduling strategy that originated this activity,
  /// if it was created from a scheduled schedule.
  @HiveField(17)
  final ScheduleType? schedulerType;

  /// The current state of this activity session.
  ///
  /// For example:
  /// - [TaskStatus.done] when finished successfully.
  /// - [TaskStatus.doneLate] if finished outside the scheduled window.
  @HiveField(18)
  final TaskStatus taskStatus;

  @override
  TaskActivityEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startedAt,
    DateTime? endedAt,
    String? userId,
    String? description,
    String? referenceId,
    ReferenceType? referenceType,
    ScheduleType? schedulerType,
    String? schedulerId,
    List<String>? variableTagIds,
    TaskStatus? occurrenceStatus,
  }) =>
      TaskActivityEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        referenceId: referenceId ?? this.referenceId,
        referenceType: referenceType ?? this.referenceType,
        startedAt: startedAt ?? this.startedAt,
        endedAt: endedAt ?? this.endedAt,
        variableTagIds: variableTagIds ?? this.variableTagIds,
        taskStatus: occurrenceStatus ?? taskStatus,
        schedulerId: schedulerId ?? this.schedulerId,
        schedulerType: schedulerType ?? this.schedulerType,
      );

  /// Properties used by `equatable` to compare instances.
  @override
  List<Object?> get props => [
        ...super.props,
        referenceId,
        referenceType,
        startedAt,
        endedAt,
        taskStatus,
        schedulerId,
        variableTagIds,
      ];
}
