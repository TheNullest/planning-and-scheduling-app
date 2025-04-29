import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/tag.dart';

part 'tag_hive_model.g.dart';

/// A Hive model for persisting Tag entities.
///
/// The [TagHiveModel] is responsible for serializing and deserializing tag data for offline storage
/// using Hive. It extends [TagEntity] and adds factory methods and copying capabilities.
///
/// ## Example Usage:
/// ```dart
/// // Create a domain entity instance:
/// final tagEntity = TagEntity(
///   id: 'tag_001',
///   userId: 'user_001',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'A very important tag',
///   title: 'Urgent',
///   colorCode: 0xff0000, // Example color code
///   iconCode: 0xe001,     // Example icon code
/// );
///
/// // Convert the domain entity to a Hive model:
/// final tagHiveModel = TagHiveModel.fromEntity(tagEntity);
///
/// // Create a modified copy with a new title:
/// final updatedTagHiveModel = tagHiveModel.copyWith(title: 'Top Priority');
/// ```
///
/// The Hive annotations ([HiveType] and [HiveField]) ensure proper serialization.
@HiveType(typeId: ClassHiveTypeIds.tag) // Unique Type ID for Hive
class TagHiveModel extends TagEntity {
  TagHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required super.title,
    required super.colorCode,
    required super.iconCode,
  });

  /// Creates a [TagHiveModel] from a corresponding [TagEntity].
  ///
  /// This factory constructor converts a domain entity into its Hive model representation,
  /// making it suitable for local persistence.
  factory TagHiveModel.fromEntity(TagEntity entity) {
    return TagHiveModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      description: entity.description,
      title: entity.title,
      colorCode: entity.colorCode,
      iconCode: entity.iconCode,
    );
  }

  /// Returns a new instance of [TagHiveModel] with updated values.
  ///
  /// Any parameter omitted will default to the current value of the corresponding field
  /// in this instance. This method helps in maintaining immutability.
  @override
  TagHiveModel copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    String? title,
    int? colorCode,
    int? iconCode,
  }) {
    return TagHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      description: description ?? this.description,
      title: title ?? this.title,
      colorCode: colorCode ?? this.colorCode,
      iconCode: iconCode ?? this.iconCode,
    );
  }
}
