import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
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
    required super.description,
    required super.updatedAt,
    required this.referenceId,
    required this.referenceType,
    required this.activityDuration,
    required this.variableTags,
    required this.scheduleDefinitionId,
    required this.taskStatus,
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
  final DateRangeEntity activityDuration;

  /// Dynamic tags associated with this specific work session
  ///
  /// Enables context-specific categorization different from
  /// the parent task's tags
  @HiveField(14)
  final List<TagEntity> variableTags;

  /// Reference to the schedule definition that triggered this activity
  ///
  /// Null indicates manual time tracking outside scheduling system
  @HiveField(15)
  final String? scheduleDefinitionId;

  /// Current state of the work session
  ///
  /// Special states:
  /// - [TaskStatus.doneLate] : Finished outside
  ///   the parent schedule's active period
  @HiveField(16)
  final TaskStatus taskStatus;

  /// The calculated duration of the work session
  ///
  /// Automatically derived from [activityDuration] difference.
  /// Returns null if session hasn't ended (end time not set).
  Duration? get calculatedSpentTime =>
      activityDuration.isValid ? activityDuration.end?.difference(activityDuration.start!) : null;

  @override
  TaskActivityEntity copyWith({
    String? id,
    int? order,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? referenceId,
    ReferenceType? referenceType,
    String? scheduleDefinitionId,
    DateRangeEntity? activityDuration,
    List<TagEntity>? variableTags,
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
        activityDuration: activityDuration ?? this.activityDuration,
        variableTags: variableTags ?? this.variableTags,
        taskStatus: taskStatus ?? this.taskStatus,
        scheduleDefinitionId: scheduleDefinitionId ?? this.scheduleDefinitionId,
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
        activityDuration,
        taskStatus,
        scheduleDefinitionId,
        variableTags,
      ];
}
