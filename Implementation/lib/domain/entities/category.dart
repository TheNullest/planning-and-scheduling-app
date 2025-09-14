import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/tag.dart';

/// Represents a generic category for organizing application entities (tasks, notes, etc.),
/// with visual customization capabilities.
///
/// ## Example Usage
/// ```dart
/// CategoryEntity(
///   title: "Work Projects",
///   colorCode: 0xFF4285F4, // Google Blue
///   iconCode: 0xe3c9, // Material Icons "work" code point
///   id: "cat_123",
///   userId: "user_456",
///   createdAt: DateTime(2023, 10, 15),
///   description: "Professional development tasks",
///   updatedAt: DateTime(2023, 10, 16),
/// )
/// ```
///
/// ## Behavior
/// - Categories can be extended for specialized uses (e.g., [TagEntity])
/// - Color codes use ARGB format (0xAARRGGBB)
/// - Icon codes typically reference Material Design icon code points
class CategoryEntity extends BaseEntityAbstraction {
  CategoryEntity({
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required this.title,
    required this.colorCode,
    required this.iconCode,
    required super.id,
  });

  /// The display name of the category
  ///
  /// Example: "Personal Errands"
  @HiveField(11)
  final String title;

  /// ARGB color value for visual identification
  ///
  /// Format: 0xAARRGGBB
  /// - AA = Alpha (00-FF)
  /// - RR = Red (00-FF)
  /// - GG = Green (00-FF)
  /// - BB = Blue (00-FF)
  ///
  /// Example: 0xFF2196F3 (Material Blue 500)
  @HiveField(12)
  final int colorCode;

  /// Icon identifier using Material Design code points
  ///
  /// Find codes at: https://fonts.google.com/icons
  /// Example: 0xe318 → "light_mode" icon
  @HiveField(13)
  final int iconCode;

  @override
  CategoryEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    int? colorCode,
    int? iconCode,
  }) =>
      CategoryEntity(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        colorCode: colorCode ?? this.colorCode,
        iconCode: iconCode ?? this.iconCode,
      );

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        colorCode,
        iconCode,
      ];
}
