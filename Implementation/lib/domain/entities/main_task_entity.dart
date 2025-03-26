import 'package:hive/hive.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a main task in the todo application
///
/// {@template main_task_entity}
/// Contains all core properties of a task including:
/// - Title and description
/// - Visual identifiers (color/icon)
/// - Categorization (categories/tags)
/// - Temporal information (due date/time spent)
/// {@endtemplate}
class MainTaskEntity extends BaseEntityAbstraction {
  MainTaskEntity({
    required this.title,
    required this.categoryIds,
    required this.colorCode,
    required this.iconCode,
    super.id,
    super.updatedAt,
    super.userId,
    super.description,
    super.createdAt,
    int? priority,
    int? status,
    this.fixedTagIds,
    this.tagIds,
    this.dueDate,
    this.totalSpentTime,
    this.taskSchedulerId,
  })  : priority = priority ?? Priority.optional.index,
        status = status ?? Status.notStarted.index;

  /// A default, empty instance for initial values or testing.
  MainTaskEntity.empty()
      : this(
          title: 'title',
          categoryIds: [],
          colorCode: 1,
          iconCode: 2,
        );

  @HiveField(5)
  final String title;

  /// Store the color value as an integer
  @HiveField(6)
  final int colorCode;

  ///Instead of saving the entire icon, save its IconData
  @HiveField(7)
  final int iconCode;

  @HiveField(8)
  final int priority;

  @HiveField(9)
  final DateTime? dueDate;

  /// Groups such as : sporting, reading, working, fun ,...
  @HiveField(10)
  final List<String> categoryIds;

  @HiveField(11)
  final List<String>? fixedTagIds;

  @HiveField(12)
  final List<String>? tagIds;

  @HiveField(13)
  final Duration? totalSpentTime;

  /// Status == 0 => notStarted\
  /// Status == 1 => inProgress\
  /// Status == 2 => completed
  @HiveField(14)
  final int status;

  @HiveField(15)
  final String? taskSchedulerId;

  MainTaskEntity toEntity() => MainTaskEntity(
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
        tagIds: tagIds,
        dueDate: dueDate,
        totalSpentTime: totalSpentTime,
        taskSchedulerId: taskSchedulerId,
      );

  @override
  MainTaskEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
    List<String>? categoryIds,
    int? priority,
    int? status,
    List<String>? fixedTagIds,
    List<String>? tagIds,
    DateTime? dueDate,
    Duration? totalSpentTime,
    String? taskSchedulerId,
  }) =>
      MainTaskEntity(
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
        tagIds: tagIds ?? this.tagIds,
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
        tagIds,
        dueDate,
        totalSpentTime,
        taskSchedulerId,
      ];
}
