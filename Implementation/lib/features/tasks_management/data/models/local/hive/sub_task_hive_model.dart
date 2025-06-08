import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart' show TaskEntity;
import 'package:zamaan/domain/entities/task_activity.dart' show TaskActivityEntity;
import 'package:zamaan/domain/enums/enums.dart';

part 'sub_task_hive_model.g.dart';

/// A Hive model for storing sub-task data.
///
/// This model extends [SubTaskEntity] to provide Hive persistence for sub-tasks.
/// It includes properties for the sub-task's identifiers, priority, title, status, and
/// the total time spent on the sub-task.
///
/// ## Example Usage:
/// ```dart
/// // Create a domain entity instance
/// final subTaskEntity = SubTaskEntity(
///   id: 'sub_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Description of the sub-task',
///   taskId: 'task_123',
///   priority: Priority.high,
///   title: 'Implement feature X',
///   status: TaskStatus.inProgress,
///   totalSpentTime: Duration(hours: 2),
/// );
///
/// // Convert the domain entity to a Hive model
/// final subTaskHiveModel = SubTaskHiveModel.fromEntity(subTaskEntity);
///
/// // Create a modified copy with an updated title
/// final updatedHiveModel = subTaskHiveModel.copyWith(title: 'Implement feature X (updated)');
/// ```
///
/// The model is annotated with Hive type and field IDs for proper serialization.
@HiveType(typeId: ClassHiveTypeIds.subTask) // Unique Type ID for Hive
class SubTaskHiveModel extends BaseEntityAbstraction {
  SubTaskHiveModel({
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
  });

  /// Creates a [SubTaskHiveModel] from a corresponding [SubTaskEntity].
  ///
  /// This factory method is useful when you need to persist a sub-task entity in Hive.
  factory SubTaskHiveModel.fromEntity(SubTaskEntity entity) {
    return SubTaskHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      taskId: entity.taskId,
      priority: entity.priority,
      title: entity.title,
      status: entity.status,
      totalSpentTime: entity.totalSpentTime,
    );
  }

  /// The ID of the parent task this subtask belongs to.
  ///
  /// This field acts as a foreign key linking to a [TaskEntity].
  @HiveField(11)
  final String taskId;

  /// The priority level of the subtask.
  ///
  /// Possible values:
  /// - [Priority.low] ("کم")
  /// - [Priority.medium] ("متوسط")
  /// - [Priority.high] ("زیاد")
  @HiveField(12)
  final Priority priority;

  /// A short, descriptive title for the subtask.
  ///
  /// Example: "Refactor authentication module"
  @HiveField(13)
  final String title;

  /// The current status of the subtask.
  ///
  /// Possible values include:
  /// - [TaskStatus.inProgress] ("در حال انجام")
  /// - [TaskStatus.done] ("انجام شده")
  /// - [TaskStatus.doneLate] ("تکمیل خارج از برنامه")
  @HiveField(14)
  final TaskStatus status;

  /// The total time spent on this subtask, aggregated from all [TaskActivityEntity] records.
  ///
  /// - This value is **automatically calculated** and should not be set manually.
  /// - Will be `null` if no time has been logged yet.
  @HiveField(15)
  final Duration? totalSpentTime;

  /// Returns a new instance of [SubTaskHiveModel] with modified values.
  ///
  /// Any parameter not provided will retain the existing value from the current instance.
  @override
  SubTaskHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? taskId,
    Priority? priority,
    String? title,
    TaskStatus? status,
    Duration? totalSpentTime,
  }) {
    return SubTaskHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      taskId: taskId ?? this.taskId,
      priority: priority ?? this.priority,
      title: title ?? this.title,
      status: status ?? this.status,
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        title,
        priority,
        status,
        totalSpentTime,
      ];
}
