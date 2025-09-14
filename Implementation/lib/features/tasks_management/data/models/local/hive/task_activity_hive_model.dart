import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/schedule_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';

part 'task_activity_hive_model.g.dart';

/// A Hive model for persisting task activity data.
///
/// This model extends [TaskActivityEntity] and is designed to serialize and
/// deserialize task activity information for offline storage using Hive. It
/// includes details such as the date range during which the activity occurs,
/// task reference information, variable tags, and the current task status.
///
/// ## Example Usage:
/// ```dart
/// final taskActivityEntity = TaskActivityEntity(
///   id: 'activity_001',
///   userId: 'user_123',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Track task activity for a specific period',
///   referenceId: 'task_456',
///   referenceType: 'MainTask',
///   dateRange: DateRange(start: DateTime(2025, 1, 1), end: DateTime(2025, 1, 31)),
///   variableTags: ['urgent', 'backend'],
///   scheduleConstraintsId: 'schedule_789',
///   taskStatus: TaskStatus.inProgress,
/// );
///
/// // Convert the domain entity to a Hive model instance:
/// final hiveModel = TaskActivityHiveModel.fromEntity(taskActivityEntity);
///
/// // Create an updated copy with a modified task status:
/// final updatedHiveModel = hiveModel.copyWith(taskStatus: TaskStatus.completed);
/// ```
///
/// The Hive annotations ([HiveType] and [HiveField]) ensure proper serialization.
@HiveType(typeId: ClassHiveTypeIds.taskActivity) // Unique Type ID for Hive
class TaskActivityHiveModel extends TaskActivityEntity {
  TaskActivityHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.referenceId,
    required super.referenceType,
    required super.startedAt,
    required super.variableTagIds,
    required super.taskStatus,
    super.endedAt,
    super.schedulerId,
    super.schedulerType,
    super.description,
    super.updatedAt,
  });

  /// Creates a [TaskActivityHiveModel] from a corresponding [TaskActivityEntity].
  ///
  /// This factory constructor maps each field from the domain entity to create a
  /// Hive model suitable for persistence.
  factory TaskActivityHiveModel.fromEntity(TaskActivityEntity entity) {
    return TaskActivityHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      referenceId: entity.referenceId,
      referenceType: entity.referenceType,
      startedAt: entity.startedAt,
      endedAt: entity.endedAt,
      variableTagIds: entity.variableTagIds,
      schedulerId: entity.schedulerId,
      taskStatus: entity.taskStatus,
      schedulerType: entity.schedulerType,
    );
  }

  /// Returns a new instance of [TaskActivityHiveModel] with updated values.
  ///
  /// If a parameter is omitted, its current value is retained. This pattern helps
  /// maintain immutability by creating a modified copy of the instance without
  /// altering the original.

  @override
  TaskActivityHiveModel copyWith({
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
    String? constraintDateTimeRangeId,
    List<String>? variableTagIds,
    TaskStatus? occurrenceStatus,
  }) {
    return TaskActivityHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      referenceId: referenceId ?? this.referenceId,
      referenceType: referenceType ?? this.referenceType,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      variableTagIds: variableTagIds ?? List.from(this.variableTagIds),
      schedulerId: schedulerId ?? this.schedulerId,
      schedulerType: schedulerType ?? this.schedulerType,
      taskStatus: occurrenceStatus ?? taskStatus,
    );
  }
}
