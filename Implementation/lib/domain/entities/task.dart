import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
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
///   description: "Complete VM/UX overhaul",
/// );
/// ```

class TaskEntity extends BaseEntityAbstraction {
  /// - [scheduledDayIds]: Advanced customization for specific scheduled days.
  /// - [scheduledIntervalIds]: Interval-based scheduling for tasks.
  TaskEntity({
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
    super.id,
  });

  /// Short descriptive title (max 100 chars)
  final String title;

  /// ARGB color value (0xAARRGGBB format)
  final int colorCode;

  /// Material Design icon code point
  final int iconCode;

  /// Importance level for task prioritization
  final Priority priority;

  final List<String> subTaskIds;

  /// Primary categorization groups
  final List<String> categoryIds;

  /// Permanent tags that cannot be auto-removed
  final List<String> fixedTagIds;

  /// Cumulative time spent across all activities
  final Duration totalSpentTime;

  /// Whether the task is hidden from main views
  final bool archived;

  /// Current lifecycle state
  final TaskStatus taskStatus;

  final String? scheduleConstraintId;

  /// Advanced custom scheduling logic for specific days.
  ///
  /// Contains user-defined rules for particular days (e.g., Sundays from 10 AM to 12 PM).
  final List<String> scheduledDayIds;

  /// Interval-based scheduling logic.
  ///
  /// Example: "Every 3 days from 9 AM to 11 AM".
  final List<String> scheduledIntervalIds;

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
    List<String>? subTasks,
    List<String>? categoryIds,
    Priority? priority,
    bool? archived,
    List<String>? fixedTagIds,
    Duration? totalSpentTime,
    TaskStatus? taskStatus,
    String? scheduleConstraintId,
    List<String>? scheduledDayIds,
    List<String>? scheduledIntervalIds,
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
        categoryIds: categoryIds ?? List.from(this.categoryIds),
        subTaskIds: subTasks ?? List.from(subTaskIds),
        priority: priority ?? this.priority,
        archived: archived ?? this.archived,
        scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
        scheduledDayIds: scheduledDayIds ?? List.from(this.scheduledDayIds),
        scheduledIntervalIds: scheduledIntervalIds ?? List.from(this.scheduledIntervalIds),
        fixedTagIds: fixedTagIds ?? List.from(this.fixedTagIds),
        totalSpentTime: totalSpentTime ?? this.totalSpentTime,
        taskStatus: taskStatus ?? this.taskStatus,
      );

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
