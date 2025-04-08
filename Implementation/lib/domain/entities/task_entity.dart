import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a main task in the todo application
///
/// {@template task_entity}
/// Contains all core properties of a task including:
/// - Title and description
/// - Visual identifiers (color/icon)
/// - Categorization (categories/tags)
/// - Temporal information (due date/time spent)
/// {@endtemplate}
class TaskEntity extends BaseEntityAbstraction {
  TaskEntity({
    required this.title,
    required this.categoryIds,
    required this.colorCode,
    required this.iconCode,
    super.id,
    super.updatedAt,
    super.userId,
    super.description,
    super.createdAt,
    this.priority = 0, // Replace with the actual index of [Priority.optional]
    this.status = 0, // Replace with the actual index of [Status.notStarted]
    this.fixedTagIds,
    this.dueDate,
    this.totalSpentTime,
    this.taskSchedulerId,
  });

  /// A default, empty instance for initial values or testing.
  TaskEntity.empty()
      : this(
          title: 'title',
          categoryIds: [],
          colorCode: '1',
          iconCode: '2',
        );

  @HiveField(11)
  final String title;

  /// Store the color value as an String
  @HiveField(12)
  final String colorCode;

  ///Instead of saving the entire icon, save its IconData
  @HiveField(13)
  final String iconCode;

  @HiveField(14)
  final int priority;

  @HiveField(15)
  final DateTime? dueDate;

  /// Groups such as : sporting, reading, working, fun ,...
  @HiveField(16)
  final List<String> categoryIds;

  @HiveField(17)
  final List<String>? fixedTagIds;

  @HiveField(18)
  final Duration? totalSpentTime;

  /// Status == 0 => notStarted\
  /// Status == 1 => inProgress\
  /// Status == 2 => completed
  @HiveField(19)
  final int status;

  @HiveField(20)
  final String? taskSchedulerId;

  TaskEntity toEntity() => TaskEntity(
        id: id,
        updatedAt: updatedAt,
        description: description,
        createdAt: createdAt,
        userId: userId,
        title: title,
        colorCode: colorCode,
        iconCode: iconCode,
        categoryIds: categoryIds,
        priority: priority,
        status: status,
        fixedTagIds: fixedTagIds,
        dueDate: dueDate,
        totalSpentTime: totalSpentTime,
        taskSchedulerId: taskSchedulerId,
      );

  @override
  TaskEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    String? colorCode,
    String? iconCode,
    List<String>? categoryIds,
    int? priority,
    int? status,
    List<String>? fixedTagIds,
    List<String>? tagIds,
    DateTime? dueDate,
    Duration? totalSpentTime,
    String? taskSchedulerId,
  }) =>
      TaskEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        colorCode: colorCode ?? this.colorCode,
        iconCode: iconCode ?? this.iconCode,
        categoryIds: categoryIds ?? this.categoryIds.toList(),
        priority: priority ?? this.priority,
        status: status ?? this.status,
        fixedTagIds: fixedTagIds ?? this.fixedTagIds,
        dueDate: dueDate ?? this.dueDate,
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        taskSchedulerId: taskSchedulerId ?? this.taskSchedulerId,
      );

// validations
  bool get _isValid => title.isNotEmpty && categoryIds.isNotEmpty;

  bool get _isOverdue => dueDate?.isBefore(DateTime.now()) ?? false;

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        categoryIds,
        createdAt,
        colorCode,
        iconCode,
        priority,
        status,
        fixedTagIds,
        dueDate,
        totalSpentTime,
        taskSchedulerId,
      ];
}
