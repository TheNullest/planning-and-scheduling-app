import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

/// Represents a tracked work session for a task or subtask, including scheduling relationships.
///
/// ## Example Usage
/// ```dart
/// final activity = TaskActivityEntity(
///   referenceId: "task_123",
///   referenceType: "task",
///   dateRange: DateRange(
///     start: DateTime(2023, 10, 15, 14, 0),
///     end: DateTime(2023, 10, 15, 16, 30),
///   ),
///   variableTags: [TagEntity(id: "urgent", title: "Urgent")],
///   scheduleDefinitionId: "sched_789",
///   taskStatus: TaskStatus.completed,
///   // Base entity fields
///   id: "activity_456",
///   userId: "user_001",
///   createdAt: DateTime.now(),
///   description: "Client project work session",
/// );
///
/// print(activity.calculatedSpentTime); // Duration(hours: 2, minutes: 30)
/// ```

class TaskActivityEntity extends BaseEntityAbstraction {
  TaskActivityEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.referenceId,
    required this.referenceType,
    required this.dateTimeRangeId,
    required this.variableTagIds,
    required this.taskStatus,
    this.schedulerId,
    this.schedulerType,
    super.description,
    super.updatedAt,
  });

  /// The ID of the associated task or subtask
  ///
  /// - When [referenceType] = "task": Links to [TaskEntity.id]
  /// - When [referenceType] = "subtask": Links to [SubTaskEntity.id]
  @HiveField(11)
  final String referenceId;

  /// The type of entity referenced by [referenceId]
  ///
  /// Valid values:
  /// - "task" : Parent task reference
  /// - "subtask" : Child task reference
  @HiveField(12)
  final ReferenceType referenceType;

  /// The active time window for this work session
  ///
  /// Used for:
  /// - Calculating duration via [calculatedSpentTime]
  /// - Schedule adherence validation
  @HiveField(13)
  final String dateTimeRangeId;

  /// Dynamic tags associated with this specific work session
  ///
  /// Enables context-specific categorization different from
  /// the parent task's tags
  @HiveField(14)
  final List<String> variableTagIds;

  /// Reference to the schedule definition that triggered this activity
  ///
  /// Null indicates manual time tracking outside scheduling system
  @HiveField(15)
  final String? schedulerId;

  @HiveField(16)
  final SchedulerType? schedulerType;

  /// Current state of the work session
  ///
  /// Special states:
  /// - [TaskStatus.doneLate] : Finished outside
  ///   the parent schedule's active period
  @HiveField(17)
  final TaskStatus taskStatus;

  @override
  TaskActivityEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? referenceId,
    ReferenceType? referenceType,
    SchedulerType? schedulerType,
    String? schedulerId,
    String? dateTimeRangeId,
    List<String>? variableTagIds,
    TaskStatus? taskStatus,
  }) =>
      TaskActivityEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        referenceId: referenceId ?? this.referenceId,
        referenceType: referenceType ?? this.referenceType,
        dateTimeRangeId: dateTimeRangeId ?? this.dateTimeRangeId,
        variableTagIds: variableTagIds ?? this.variableTagIds,
        taskStatus: taskStatus ?? this.taskStatus,
        schedulerId: referenceId ?? this.schedulerId,
        schedulerType: schedulerType ?? this.schedulerType,
      );

  /// Returns a list of properties that are used to determine equality.
  ///
  /// This method is used by the `equatable` package to compare instances of
  /// `TaskActivityEntity`.
  @override
  List<Object?> get props => [
        ...super.props,
        referenceId,
        referenceType,
        dateTimeRangeId,
        taskStatus,
        schedulerId,
        variableTagIds,
      ];
}
