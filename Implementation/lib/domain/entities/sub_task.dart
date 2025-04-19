import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

class SubTaskEntity extends BaseEntityAbstraction {
  SubTaskEntity({
    required this.taskId,
    required this.title,
    super.id,
    super.updatedAt,
    super.createdAt,
    super.userId,
    super.description,
    this.priority = 0, // Replace with the actual index of [Priority.optional]
    this.status = 0, // Replace with the actual index of [Status.notStarted]
    this.totalSpentTime,
  });

  SubTaskEntity.empty() : this(taskId: '1', title: 'title');

  @HiveField(11)
  final String taskId;

  @HiveField(12)
  final int priority;

  @HiveField(13)
  final String title;

  /// Status == 0 => notStarted\
  /// Status == 1 => inProgress\
  /// Status == 2 => completed
  @HiveField(14)
  final int status;

  @HiveField(15)
  final Duration? totalSpentTime;


  SubTaskEntity toEntity() => SubTaskEntity(
        id: id,
        updatedAt: updatedAt,
        description: description,
        createdAt: createdAt,
        userId: userId,
        taskId: taskId,
        title: title,
        priority: priority,
        status: status,
        totalSpentTime: totalSpentTime,
      );

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
    int? priority,
    int? status,
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
      );

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
