import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// An abstract base class for entities, providing common fields and functionality.
///
/// It includes the following fields:
/// - `id`: The unique identifier for the entity, automatically generated if not provided.
/// - `userId`: The ID of the creator of the entity, if any.
/// - `createdAt`: The timestamp when the entity was created, automatically set if not provided.
/// - `description`: A description of the entity, if any.
/// - `updatedAt`: The timestamp when the entity was last updated, can be null if not updated.
abstract class BaseEntityAbstraction with EquatableMixin {
  BaseEntityAbstraction({
    required this.id,
    required this.userId,
    required this.createdAt,
    this.description,
    this.updatedAt,
  });

  /// Creates a new `BaseEntityAbstraction` with the specified properties.
  ///
  /// The `id` and `createdAt` fields are automatically generated if not provided.
  /// The `order`, `userId`, and `description` fields are optional.

  /// The unique identifier for the entity.
  ///
  /// This field is automatically generated using `uuidGenerator` if not provided.
  @HiveField(0)
  final String id;

  /// The ID of the creator of the entity, if authenticated and signed in.
  @HiveField(1)
  final String userId;

  /// The timestamp when the entity was created.
  ///
  /// This field is automatically set to the current date and time if not provided.
  @HiveField(2)
  final DateTime createdAt;

  /// A description of the entity.
  @HiveField(3)
  final String? description;

  /// The timestamp when the entity was last updated.
  ///
  /// This field can be null if the entity has not been updated since creation,
  /// it should be set when the entity is updated.
  @HiveField(4)
  final DateTime? updatedAt;

  /// Creates a copy of this class with potentially modified properties.
  ///
  /// The `copyWith` method allows you to create a new instance of the class
  /// with some properties modified while keeping the rest unchanged.
  BaseEntityAbstraction copyWith();

  // Default validation logic for base fields
  // @protected
  void validateFields() {
    final errors = <String>[];

    if (description != null && description!.length > 500) {
      errors.add('Description cannot exceed 500 characters.');
    }
  }

  @override
  List<Object?> get props => [
        id,
        updatedAt,
        userId,
        description,
        createdAt,
      ];
}
