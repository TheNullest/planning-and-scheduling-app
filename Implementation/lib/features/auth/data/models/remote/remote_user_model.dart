// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:zamaan/core/common/entities/user_entity.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/local_user_model.dart';

/// A model class representing a remote user.
///
/// This class extends `LocalUserModel` and provides additional functionality
/// for handling remote user data, including conversion from and to JSON,
/// and creating instances from various data sources.
class RemoteUserModel extends LocalUserModel {
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
  RemoteUserModel({
    required super.userName,
    required super.password,
    required super.firstName,
    required super.lastName,
    required super.createdAt,
    required super.emailAddress,
    super.id,
    super.updatedAt,
    super.birthDate,
    super.description,
    super.avatarPath,
  });

  /// Constructs an empty `RemoteUserModel` instance for testing purposes.
  RemoteUserModel.empty() : super.empty();

  RemoteUserModel.delete()
      : this(
          userName: DateFormat('yyyy/MM/d HH:mm:ss').format(DateTime.now()),
          password: '',
          firstName: '',
          lastName: '',
          createdAt: DateTime.now(),
          emailAddress: 'deleted@gml.com',
        );

  /// Creates a `RemoteUserModel` instance from a `UserEntity`.
  ///
  /// - Parameters:
  ///   - entity: The `UserEntity` containing the user data.
  ///
  /// - Returns: A `RemoteUserModel` instance.
  factory RemoteUserModel.fromEntity(UserEntity entity) => RemoteUserModel(
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

  /// Creates a `RemoteUserModel` instance from a JSON map.
  ///
  /// - Parameters:
  ///   - map: The JSON map containing the user data.
  ///
  /// - Returns: A `RemoteUserModel` instance.
  factory RemoteUserModel.fromJson(DataMap map) {
    return tryCatchSimple<RemoteUserModel>(
      action: () => RemoteUserModel(
        id: map['id'] as String,
        createdAt: map['created_at'] != null
            ? DateTime.parse(map['created_at'] as String)
            : null,
        description: map['description'] as String? ?? '',
        userName: map['user_name'] as String,
        firstName: map['first_name'] as String? ?? '',
        lastName: map['last_name'] as String? ?? '',
        password: '',
        birthDate: DateTime.parse(map['birth_date'] as String),
        avatarPath: map['avatar_path'] as String? ?? '',
        emailAddress: map['email'] as String? ?? '',
      ),
    );
  }

  /// Creates a `RemoteUserModel` instance from a Supabase user JSON map.
  ///
  /// - Parameters:
  ///   - map: The JSON map containing the Supabase user data.
  ///
  /// - Returns: A `RemoteUserModel` instance.
  factory RemoteUserModel.fromSupabaseUserJson(DataMap map) {
    return tryCatchSimple<RemoteUserModel>(
      action: () => RemoteUserModel(
        id: map['id'] as String,
        createdAt: map['created_at'] != null
            ? DateTime.parse(map['created_at'] as String)
            : null,
        description: map['user_metadata']['bio']! as String? ?? '',
        userName: map['user_metadata']['user_name'] as String,
        firstName: map['user_metadata']['first_name'] as String? ?? '',
        lastName: map['user_metadata']['last_name'] as String? ?? '',
        password: map['password'] as String? ?? '',
        birthDate: DateTime.parse(map['user_metadata']['birth_date'] as String),
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
  RemoteUserModel copyWith({
    String? id,
    int? order,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? description,
    String? avatarPath,
    String? emailAddress,
  }) =>
      RemoteUserModel(
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

  /// Converts the `RemoteUserModel` instance to a map.
  ///
  /// - Returns: A map containing the user data.
  DataMap toMap() => {
        'id': id,
        'user_name': userName,
        'password': password,
        'first_name': firstName,
        'last_name': lastName,
        'email_address': emailAddress,
        'created_at': createdAt.toIso8601String(),
        'birth_date': birthDate?.toIso8601String(),
        'updated_at': birthDate?.toIso8601String(),
        'bio': description,
        'avatar_path': avatarPath,
      };

  /// Converts the `RemoteUserModel` instance to a Supabase data map.
  ///
  /// - Returns: A map containing the user data formatted for Supabase.
  DataMap toSupabaseDataMap() {
    return {
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

  /// Converts the `RemoteUserModel` instance to a JSON string.
  ///
  /// - Returns: A JSON string containing the user data.
  String toJson() => jsonEncode(toMap());
}
