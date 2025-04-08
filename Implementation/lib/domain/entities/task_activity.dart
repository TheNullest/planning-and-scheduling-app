import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a time interval entity with details about tasks and time spent.
///
/// This class extends `BaseEntityAbstraction` and includes additional fields
/// for task IDs, start and end times, and calculated spent time.

class TaskActivityEntity extends BaseEntityAbstraction {
  /// Creates a new [TaskActivityEntity] with the specified properties.
  ///
  /// The `taskId`, `subTaskId`, and `startAt` are required to initialize the entity.
  /// The `id`, `order`, `createdAt`, `userId`, `description`, and `endAt` are optional
  /// and can be customized. The `spentTime` is automatically calculated and cannot be
  /// directly customized or manipulated.
  TaskActivityEntity({
    required this.taskId,
    required this.subTaskId,
    required this.startAt,
    super.id,
    super.updatedAt,
    super.createdAt,
    super.userId,
    super.description,
    this.endAt,
    Duration? spentTime,
    this.isPaused = false,
  }) : spentTime = (endAt != null && spentTime == null)
            ? (endAt.isAfter(startAt)
                ? endAt.difference(startAt)
                : throw ArgumentError('endAt must be after startAt'))
            : spentTime;

  /// Creates an empty [TaskActivityEntity] with default values.
  ///
  /// This constructor is useful for initializing an entity with default values.
  TaskActivityEntity.empty()
      : this(taskId: '1', subTaskId: '2', startAt: DateTime(2024));

  /// The ID of the main task associated with this time interval.
  @HiveField(11)
  final String taskId;

  /// The ID of the sub-task associated with this time interval.
  @HiveField(12)
  final String subTaskId;

  /// The start time of the time interval.
  @HiveField(13)
  final DateTime startAt;

  /// The end time of the time interval, if any.
  @HiveField(14)
  final DateTime? endAt;

  /// The calculated spent time based on the difference between `startAt` and `endAt`.
  ///
  /// If `endAt` is provided and is after `startAt`, the `spentTime` field will be
  /// automatically calculated as the difference between `startAt` and `endAt`.
  /// If `endAt` is not set, `spentTime` remains null.
  @HiveField(15)
  final Duration? spentTime;

  @HiveField(16)
  final bool isPaused;

  @override
  TaskActivityEntity copyWith({
    String? id,
    int? order,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? taskId,
    String? subTaskId,
    DateTime? startAt,
    DateTime? endAt,
    bool? isPaused,
  }) =>
      TaskActivityEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        subTaskId: subTaskId ?? this.subTaskId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        isPaused: isPaused ?? this.isPaused,
      );

  TaskActivityEntity toEntity() => TaskActivityEntity(
        id: id,
        updatedAt: updatedAt,
        description: description,
        createdAt: createdAt,
        userId: userId,
        taskId: taskId,
        subTaskId: subTaskId,
        startAt: startAt,
        endAt: endAt,
        spentTime: spentTime,
        isPaused: isPaused,
      );

  /// Returns a list of properties that are used to determine equality.
  ///
  /// This method is used by the `equatable` package to compare instances of
  /// `TaskActivityEntity`.
  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        subTaskId,
        startAt,
        endAt,
        spentTime,
        isPaused,
      ];
}
