// ignore_for_file: avoid_dynamic_calls

import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user_entity.dart';

/// A model class representing a remote user.
///
/// This class extends `UserEntity` and provides additional functionality
/// for handling remote user data, including conversion from and to JSON,
/// and creating instances from various data sources.
class UserSupabaseModel extends UserEntity {
  /// Constructs a `RemoteUserModel` instance.
  ///
  /// - Parameters:
  ///   - userName: The username of the user.
  ///   - password: The password of the user.
  ///   - firstName: The first name of the user.
  ///   - lastName: The last name of the user.
  ///   - createdAt: The date and time when the user was created.
  ///   - emailAddress: The email address of the user.
  ///   - id: The unique identifier of the user (optional).
  ///   - updatedAt: The date and time when the user was last updated (optional).
  ///   - birthDate: The birth date of the user (optional).
  ///   - description: A description of the user (optional).
  ///   - avatarPath: The path to the user's avatar image (optional).
  UserSupabaseModel({
    required super.userName,
    required super.password,
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
    super.createdAt,
    super.id,
    super.updatedAt,
    super.birthDate,
    super.description,
    super.avatarPath,
  });

  /// Constructs an empty [UserSupabaseModel] instance for testing purposes.
  UserSupabaseModel.empty()
      : this(
          userName: '_empty.userName',
          firstName: '_empty.firstName',
          lastName: '_empty.lastName',
          description: '_empty.description',
          emailAddress: '_empty.emailAddress',
          password: '_empty.password',
          avatarPath: '_empty.avatarPath',
          createdAt: DateTime.now(),
          birthDate: DateTime(1989, 12, 23, 16, 53, 37, 532, 444),
        );

  /// Creates a `RemoteUserModel` instance from a `UserEntity`.
  ///
  /// - Parameters:
  ///   - entity: The `UserEntity` containing the user data.
  ///
  /// - Returns: A `RemoteUserModel` instance.
  factory UserSupabaseModel.fromEntity(UserEntity entity) => UserSupabaseModel(
        id: entity.id,
        userName: entity.userName,
        password: entity.password,
        firstName: entity.firstName,
        lastName: entity.lastName,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        birthDate: entity.birthDate,
        avatarPath: entity.avatarPath,
        emailAddress: entity.emailAddress,
      );

  /// Creates a `RemoteUserModel` instance from a Supabase user JSON map.
  ///
  /// - Parameters:
  ///   - map: The JSON map containing the Supabase user data.
  ///
  /// - Returns: A `RemoteUserModel` instance.
  factory UserSupabaseModel.fromJson(DataMap map) {
    return tryCatchSimple<UserSupabaseModel>(
      action: () => UserSupabaseModel(
        id: map['id'] as String,
        createdAt: map['created_at'] != null
            ? DateTime.tryParse(map['created_at'] as String)
            : null,
        description: map['user_metadata']['bio']! as String? ?? '',
        userName: map['user_metadata']['user_name'] as String,
        firstName: map['user_metadata']['first_name'] as String? ?? '',
        lastName: map['user_metadata']['last_name'] as String? ?? '',
        password: map['password'] as String? ?? '',
        birthDate:
            DateTime.tryParse(map['user_metadata']['birth_date'] as String),
        avatarPath: map['user_metadata']['avatar_path'] as String? ?? '',
        emailAddress: map['email'] as String,
      ),
    );
  }

  /// Creates a copy of the current `RemoteUserModel` instance with updated fields.
  ///
  /// - Parameters:
  ///   - id: The unique identifier of the user (optional).
  ///   - order: The order of the user (optional).
  ///   - userName: The username of the user (optional).
  ///   - password: The password of the user (optional).
  ///   - firstName: The first name of the user (optional).
  ///   - lastName: The last name of the user (optional).
  ///   - birthDate: The birth date of the user (optional).
  ///   - createdAt: The date and time when the user was created (optional).
  ///   - updatedAt: The date and time when the user was last updated (optional).
  ///   - description: A description of the user (optional).
  ///   - avatarPath: The path to the user's avatar image (optional).
  ///   - emailAddress: The email address of the user (optional).
  ///
  /// - Returns: A new `RemoteUserModel` instance with the updated fields.
  @override
  UserSupabaseModel copyWith({
    String? id,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isSynced,
    String? description,
    String? avatarPath,
    String? emailAddress,
  }) =>
      UserSupabaseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        birthDate: birthDate ?? this.birthDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        avatarPath: avatarPath ?? this.avatarPath,
        emailAddress: emailAddress ?? this.emailAddress,
      );

  /// Converts the `RemoteUserModel` instance to a Supabase meta data.
  ///
  /// - Returns: A map containing the user data formatted for Supabase.
  DataMap toSupabaseMetaData() => {
        'id': id,
        'created_at': createdAt.toIso8601String(),
        'bio': description,
        'user_name': userName,
        'first_name': firstName,
        'last_name': lastName,
        'birth_date': birthDate?.toIso8601String(),
        'avatar_path': avatarPath,
      };
}
