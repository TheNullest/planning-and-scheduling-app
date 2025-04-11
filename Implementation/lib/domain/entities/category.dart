import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a category for tasks or activities.
/// Examples of categories include: Sport, Reading, Working, Fun, etc.
class CategoryEntity extends BaseEntityAbstraction {
  CategoryEntity({
    required this.title,
    required this.colorCode,
    required this.iconCode,
    super.id,
    super.createdAt,
    super.userId,
    super.updatedAt,
    super.description,
  });

  CategoryEntity.empty() : this(title: 'title', colorCode: '1', iconCode: '2');

  @HiveField(11)
  final String title;

  @HiveField(12)
  final String colorCode;

  @HiveField(13)
  final String iconCode;

  CategoryEntity toEntity() => CategoryEntity(
        id: id,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
        userId: userId,
        title: title,
        colorCode: colorCode,
        iconCode: iconCode,
      );

  @override
  CategoryEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? title,
    String? colorCode,
    String? iconCode,
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
