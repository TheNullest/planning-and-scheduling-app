import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/user.dart';

part 'user_supabase_model.freezed.dart';
part 'user_supabase_model.g.dart';

/// A model class representing a remote user.
///
/// This class extends `UserEntity` and provides additional functionality
/// for handling remote user data, including conversion from and to JSON,
/// and creating instances from various data sources.

@freezed
class UserSupabaseModel with _$UserSupabaseModel {
  const factory UserSupabaseModel({
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String id,
    @JsonKey(name: 'email_address') String? emailAddress,
    String? password,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    @JsonKey(name: 'avatar_path') String? avatarPath,
    @JsonKey(name: 'bio') String? description,
  }) = _UserSupabaseModel;

  factory UserSupabaseModel.fromJson(Map<String, dynamic> json) => _$UserSupabaseModelFromJson(
        json,
      );

  factory UserSupabaseModel.fromJsonUserAccount(Map<String, dynamic> json) =>
      _$UserSupabaseModelFromJson(
        json['user_metadata'] as Map<String, dynamic>,
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
}

extension UserSupabaseModelX on UserSupabaseModel {
  /// Converts the `UserSupabaseModel` instance to a `UserEntity`.
  ///
  /// - Returns: A `UserEntity` instance containing the user data.
  UserEntity toEntity() => UserEntity(
        id: id,
        userId: id,
        userName: userName,
        password: '',
        firstName: firstName,
        lastName: lastName,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
        birthDate: birthDate,
        avatarPath: avatarPath,
        emailAddress: '',
      );
}
