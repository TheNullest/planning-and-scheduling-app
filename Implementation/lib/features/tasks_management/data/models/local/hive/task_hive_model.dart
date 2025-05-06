import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'task_hive_model.g.dart';

/// A Hive model for persisting task data.
///
/// The [TaskHiveModel] extends [TaskEntity] to help store task-related information
/// in Hive. It contains fields such as identifiers, title, color and icon codes,
/// priority, associated category and fixed tag identifiers, total time spent,
/// archived flag, and the task status.
///
/// ## Example Usage:
/// ```dart
/// // Create a domain entity instance:
/// final taskEntity = TaskEntity(
///   id: 'task_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Implement new feature',
///   title: 'New Feature',
///   colorCode: 0xff5733,
///   iconCode: 0xe001,
///   priority: Priority.high,
///   categoryies: ['cat_001', 'cat_002'],
///   fixedTagIds: ['tag_001'],
///   totalSpentTime: Duration(hours: 4),
///   archived: false,
///   taskStatus: TaskStatus.inProgress,
/// );
///
/// // Convert the domain entity into a Hive model:
/// final taskHiveModel = TaskHiveModel.fromEntity(taskEntity);
///
/// // Create a modified version with updated title and status:
/// final updatedTaskHiveModel = taskHiveModel.copyWith(
///   title: 'Updated Feature Title',
///   taskStatus: TaskStatus.completed,
/// );
/// ```
///
/// The Hive annotations ensure proper serialization for storage.
@HiveType(typeId: ClassHiveTypeIds.task) // Unique Type ID for Hive
class TaskHiveModel extends BaseEntityAbstraction {
  TaskHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.title,
    required this.colorCode,
    required this.iconCode,
    required this.priority,
    required this.subTaskIds,
    required this.categoryIds,
    required this.fixedTagIds,
    required this.totalSpentTime,
    required this.archived,
    required this.taskStatus,
    required this.scheduledDayIds,
    required this.scheduledIntervalIds,
    this.scheduleConstraintId,
    super.description,
    super.updatedAt,
  });

  /// Factory constructor that creates a [TaskHiveModel] instance from a [TaskEntity].
  ///
  /// This method maps each property from the domain entity to the corresponding Hive model.
  factory TaskHiveModel.fromEntity(TaskEntity entity) {
    return TaskHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      title: entity.title,
      colorCode: entity.colorCode,
      iconCode: entity.iconCode,
      priority: entity.priority,
      categoryIds: entity.categoryIds,
      fixedTagIds: entity.fixedTagIds,
      totalSpentTime: entity.totalSpentTime,
      archived: entity.archived,
      taskStatus: entity.taskStatus,
      scheduleConstraintId: entity.scheduleConstraintId,
      scheduledDayIds: List.from(entity.scheduledDayIds),
      scheduledIntervalIds: List.from(entity.scheduledIntervalIds),
      subTaskIds: List.from(entity.subTaskIds),
    );
  }

  /// Short descriptive title (max 100 chars)
  @HiveField(11)
  final String title;

  /// ARGB color value (0xAARRGGBB format)
  @HiveField(12)
  final int colorCode;

  /// Material Design icon code point
  @HiveField(13)
  final int iconCode;

  /// Importance level for task prioritization
  @HiveField(14)
  final Priority priority;

  @HiveField(15)
  final List<String> subTaskIds;

  /// Primary categorization groups
  @HiveField(16)
  final List<String> categoryIds;

  /// Permanent tags that cannot be auto-removed
  @HiveField(17)
  final List<String> fixedTagIds;

  /// Cumulative time spent across all activities
  @HiveField(18)
  final Duration totalSpentTime;

  /// Whether the task is hidden from main views
  @HiveField(19)
  final bool archived;

  /// Current lifecycle state
  @HiveField(20)
  final TaskStatus taskStatus;

  @HiveField(21)
  final String? scheduleConstraintId;

  /// Advanced custom scheduling logic for specific days.
  ///
  /// Contains user-defined rules for particular days (e.g., Sundays from 10 AM to 12 PM).
  @HiveField(22)
  final List<String> scheduledDayIds;

  /// Interval-based scheduling logic.
  ///
  /// Example: "Every 3 days from 9 AM to 11 AM".
  @HiveField(23)
  final List<String> scheduledIntervalIds;

  /// Returns a new instance of [TaskHiveModel] with updated values.
  ///
  /// Any provided parameter will override the current instance's corresponding field.
  /// Fields that are omitted retain their original values, ensuring immutability.
  @override
  TaskHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
    List<String>? subTaskIds,
    List<String>? categoryIds,
    Priority? priority,
    bool? archived,
    List<String>? fixedTagIds,
    Duration? totalSpentTime,
    TaskStatus? taskStatus,
    String? scheduleConstraintId,
    List<String>? scheduledDayIds,
    List<String>? scheduledIntervalIds,
  }) {
    return TaskHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      title: title ?? this.title,
      colorCode: colorCode ?? this.colorCode,
      iconCode: iconCode ?? this.iconCode,
      priority: priority ?? this.priority,
      categoryIds: categoryIds ?? List.from(this.categoryIds),
      fixedTagIds: fixedTagIds ?? List.from(this.fixedTagIds),
      totalSpentTime: totalSpentTime ?? this.totalSpentTime,
      archived: archived ?? this.archived,
      taskStatus: taskStatus ?? this.taskStatus,
      subTaskIds: subTaskIds ?? List.from(this.subTaskIds),
      scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
      scheduledDayIds: scheduledDayIds ?? List.from(this.scheduledDayIds),
      scheduledIntervalIds: scheduledIntervalIds ?? List.from(this.scheduledIntervalIds),
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        categoryIds,
        createdAt,
        colorCode,
        iconCode,
        priority,
        archived,
        fixedTagIds,
        totalSpentTime,
        taskStatus,
        scheduledDayIds,
        scheduledIntervalIds,
        scheduleConstraintId,
      ];
}
