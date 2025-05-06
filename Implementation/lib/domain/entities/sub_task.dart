import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Represents a subtask associated with a parent task, including its metadata and progress.
///
/// ## Example Usage
/// ```dart
/// SubTaskEntity(
///   taskId: "task_123", // Parent task ID
///   title: "Design VM mockups",
///   priority: Priority.medium,
///   status: TaskStatus.inProgress,
///   totalSpentTime: Duration(hours: 2),
///   // Inherited fields from BaseEntityAbstraction:
///   id: "subtask_456",
///   userId: "user_789",
///   createdAt: DateTime(2023, 10, 15),
///   description: "Initial design phase",
/// )
/// ```
///
/// ## Behavior
/// - Subtasks inherit properties like `userId` and `createdAt` from their parent task.
/// - The `totalSpentTime` is automatically aggregated from linked [TaskActivityEntity] instances.
class SubTaskEntity extends BaseEntityAbstraction {
  SubTaskEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.priority,
    required this.title,
    required this.status,
    required this.totalSpentTime,
    super.description,
    super.updatedAt,
    this.goalId,
  });

  /// The ID of the parent task this subtask belongs to.
  ///
  /// This field acts as a foreign key linking to a [TaskEntity].
  final String taskId;

  /// The priority level of the subtask.
  ///
  /// Possible values:
  /// - [Priority.low] ("کم")
  /// - [Priority.medium] ("متوسط")
  /// - [Priority.high] ("زیاد")
  final Priority priority;

  /// A short, descriptive title for the subtask.
  ///
  /// Example: "Refactor authentication module"
  final String title;

  /// The current status of the subtask.
  ///
  /// Possible values include:
  /// - [TaskStatus.inProgress] ("در حال انجام")
  /// - [TaskStatus.done] ("انجام شده")
  /// - [TaskStatus.doneLate] ("تکمیل خارج از برنامه")
  final TaskStatus status;

  /// The total time spent on this subtask, aggregated from all [TaskActivityEntity] records.
  ///
  /// - This value is **automatically calculated** and should not be set manually.
  /// - Will be `null` if no time has been logged yet.
  final Duration? totalSpentTime;

  final String? goalId;

  @override
  SubTaskEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Duration? totalSpentTime,
    String? userId,
    String? description,
    String? taskId,
    String? title,
    Priority? priority,
    TaskStatus? status,
    String? goalId,
  }) =>
      SubTaskEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        title: title ?? this.title,
        priority: priority ?? this.priority,
        status: status ?? this.status,
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        goalId: goalId ?? this.goalId,
      );

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        title,
        priority,
        status,
        totalSpentTime,
        goalId,
      ];
}
