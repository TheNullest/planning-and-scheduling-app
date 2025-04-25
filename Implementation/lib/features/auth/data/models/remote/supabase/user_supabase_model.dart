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
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class UserSupabaseModel with _$UserSupabaseModel {
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
  const factory UserSupabaseModel({
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String password,
    @JsonKey(name: 'email_address') required String emailAddress,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    String? id,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    @JsonKey(name: 'avatar_path') String? avatarPath,
    @JsonKey(name: 'bio') String? description,
  }) = _UserSupabaseModel;

  factory UserSupabaseModel.fromJson(Map<String, dynamic> json) => _$UserSupabaseModelFromJson(
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

  @override
  Map<String, dynamic> toJson() => _$UserSupabaseModelToJson(this);
}

extension UserSupabaseModelX on UserSupabaseModel {
  /// Converts the `UserSupabaseModel` instance to a `UserEntity`.
  ///
  /// - Returns: A `UserEntity` instance containing the user data.
  UserEntity toEntity() => UserEntity(
        id: id!,
        userId: id!,
        userName: userName,
        password: '',
        firstName: firstName,
        lastName: lastName,
        description: description,
        createdAt: createdAt,
        updatedAt: updatedAt,
        birthDate: birthDate,
        avatarPath: avatarPath,
        emailAddress: emailAddress,
      );
}
