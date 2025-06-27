import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/entities/task.dart';

/// A specialized category used for labeling and organizing tasks with visual markers.
///
/// Extends [CategoryEntity] to add tag-specific functionality while maintaining
/// core category properties. Tags are typically used for filtering, grouping,
/// and quick visual identification of related tasks.
///
/// ## Example Usage
/// ```dart
/// TagEntity(
///   id: "tag_123",
///   title: "Urgent",
///   colorCode: "#FF0000", // Red color
///   iconCode: "🚨", // Alarm emoji
///   userId: "user_456",
///   createdAt: DateTime(2023, 10, 15),
///   description: "High priority items",
///   updatedAt: DateTime(2023, 10, 16),
/// )
/// ```
///
/// ## Relationships
/// - Typically associated with [TaskEntity] through [TaskEntity.fixedTagIds]
/// - Inherits all properties from [CategoryEntity]
class TagEntity extends CategoryEntity {
  TagEntity({
    required super.userId,
    required this.taskId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.title,
    required super.colorCode,
    required super.iconCode,
    super.id,
  });

  @HiveField(14)
  final String? taskId;

  @override
  TagEntity copyWith({
    String? id,
    String? taskId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
  }) =>
      TagEntity(
        id: id ?? this.id,
        taskId: taskId ?? this.taskId,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        colorCode: colorCode ?? this.colorCode,
        iconCode: iconCode ?? this.iconCode,
      );
}
