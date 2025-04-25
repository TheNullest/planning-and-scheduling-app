import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/enums/enums.dart';

/// Represents a task with configurable properties and time tracking capabilities.
///
/// ## Example Usage
/// ```dart
/// final task = TaskEntity(
///   title: "Mobile App Redesign",
///   colorCode: 0xFF2196F3, // Material Blue
///   iconCode: 0xe3c9, // Material Icons "work" code
///   priority: Priority.high,
///   categoryIds: [CategoryEntity(id: "work", title: "Work Projects")],
///   fixedTagIds: [TagEntity(id: "urgent", title: "Urgent")],
///   totalSpentTime: Duration(hours: 12),
///   archived: false,
///   taskStatus: TaskStatus.inProgress,
///   id: "task_123",
///   userId: "user_456",
///   createdAt: DateTime(2023, 10, 1),
///   description: "Complete UI/UX overhaul",
/// );
/// ```

@HiveType(typeId: 1)
class TaskEntity extends BaseEntityAbstraction {
  TaskEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required this.title,
    required this.colorCode,
    required this.iconCode,
    required this.priority,
    required this.categories,
    required this.fixedTags,
    required this.totalSpentTime,
    required this.archived,
    required this.taskStatus,
  });

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

  /// Primary categorization groups
  @HiveField(15)
  final List<CategoryEntity> categories;

  /// Permanent tags that cannot be auto-removed
  @HiveField(16)
  final List<TagEntity> fixedTags;

  /// Cumulative time spent across all activities
  @HiveField(17)
  final Duration totalSpentTime;

  /// Whether the task is hidden from main views
  @HiveField(18)
  final bool archived;

  /// Current lifecycle state
  @HiveField(19)
  final TaskStatus taskStatus;

  // ========================
  // Validation Methods
  // ========================

  /// Validates task title format
  bool get isTitleValid => title.trim().isNotEmpty && title.length <= 100;

  /// Validates color code format
  bool get isColorValid => colorCode >= 0x00000000 && colorCode <= 0xFFFFFFFF;

  /// Validates icon code format
  bool get isIconValid => iconCode >= 0 && iconCode <= 0xFFFF; // Unicode BMP range

  /// Validates all task properties
  bool get isValid => isTitleValid && isColorValid && isIconValid;

  // ========================
  // Derived Properties
  // ========================

  /// Progress percentage (0-100) based on spent time vs estimate
  double get progressPercentage {
    // Implement your estimation logic here
    final estimatedTotal = const Duration(hours: 20).inMilliseconds;
    return (totalSpentTime.inMilliseconds / estimatedTotal * 100).clamp(0, 100);
  }

  /// Formatted time spent (e.g., "12h 30m")
  String get formattedSpentTime {
    final hours = totalSpentTime.inHours;
    final minutes = totalSpentTime.inMinutes % 60;
    return '${hours}h ${minutes}m';
  }

  // ========================
  // Status Checks
  // ========================

  bool get isActive =>
      !archived &&
      taskStatus != TaskStatus.done &&
      taskStatus != TaskStatus.doneLate &&
      taskStatus != TaskStatus.failed &&
      taskStatus != TaskStatus.cancelled;

  bool get isOverdue => taskStatus == TaskStatus.overdue;

  bool get requiresAttention => isActive && (isOverdue || priority == Priority.high);

  // ========================
  // Tag/Category Management
  // ========================

  bool hasCategory(String categoryId) => categories.any((c) => c.id == categoryId);

  bool hasTag(String tagId) => fixedTags.any((t) => t.id == tagId);

  TaskEntity addCategory(CategoryEntity category) => copyWith(
        categories: List.from(categories)..add(category),
      );

  TaskEntity removeCategory(String categoryId) => copyWith(
        categories: categories.where((c) => c.id != categoryId).toList(),
      );

  @override
  TaskEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
    List<CategoryEntity>? categories,
    Priority? priority,
    bool? archived,
    List<TagEntity>? fixedTags,
    Duration? totalSpentTime,
    TaskStatus? taskStatus,
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
        categories: categories ?? List.from(this.categories),
        priority: priority ?? this.priority,
        archived: archived ?? this.archived,
        fixedTags: fixedTags ?? List.from(this.fixedTags),
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        taskStatus: taskStatus ?? this.taskStatus,
      );

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        categories,
        createdAt,
        colorCode,
        iconCode,
        priority,
        archived,
        fixedTags,
        totalSpentTime,
        taskStatus,
      ];
}
