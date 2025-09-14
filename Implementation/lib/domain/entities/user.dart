import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a user account with personal information and authentication details.
///
/// ## Example Usage
/// ```dart
/// final user = UserEntity(
///   userName: "johndoe_92",
///   password: "hashed_password_string", // Should be hashed
///   firstName: "John",
///   lastName: "Doe",
///   emailAddress: "john.doe@example.com",
///   birthDate: DateTime(1992, 5, 15),
///   avatarPath: "/uploads/avatars/john.jpg",
///   // Inherited fields
///   id: "user_123",
///   userId: "user_123", // Duplicated for Hive compatibility
///   createdAt: DateTime(2023, 1, 1),
///   description: "Primary account holder",
/// );
/// ```
///
/// ## Security Notes
/// - [password] should always store hashed values, never plain text
/// - Consider using separate [AuthEntity] for authentication details
@HiveType(typeId: 2)
class UserEntity extends BaseEntityAbstraction {
  UserEntity({
    required super.userId,
    required super.createdAt,
    required this.userName,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.birthDate,
    required this.avatarPath,
    required super.id, super.description,
    super.updatedAt,
  });

  /// Unique username (3-20 characters, letters/numbers/_)
  @HiveField(11)
  final String userName;

  /// Hashed password using secure algorithm (e.g., bcrypt)
  @HiveField(12)
  final String password;

  /// Legal first name (1-50 characters)
  @HiveField(13)
  final String firstName;

  /// Legal last name (1-50 characters)
  @HiveField(14)
  final String lastName;

  /// Verified email address
  @HiveField(15)
  final String emailAddress;

  /// Date of birth (must be 13+ years old)
  @HiveField(16)
  final DateTime? birthDate;

  /// Profile picture path (local or URL)
  @HiveField(17)
  final String? avatarPath;

  // ========================
  // Validation Methods
  // ========================

  bool get isUsernameValid => RegExp(r'^[a-zA-Z0-9_]{3,20}$').hasMatch(userName);

  bool get isEmailValid =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(emailAddress);

  bool get isPasswordSecure =>
      password.length >= 8 && // Real security checks should be server-side
      password.contains(RegExp('[A-Z]')) &&
      password.contains(RegExp('[0-9]'));

  bool get isBirthDateValid {
    if (birthDate == null) return true;
    final minAgeDate = DateTime.now().subtract(const Duration(days: 13 * 365));
    return birthDate!.isBefore(minAgeDate);
  }

  bool get isValid => isUsernameValid && isEmailValid && isPasswordSecure && isBirthDateValid;

  // ========================
  // Derived Properties
  // ========================

  String get fullName => '$firstName $lastName';

  int? get age {
    if (birthDate == null) return null;
    final now = DateTime.now();
    return now.year -
        birthDate!.year -
        (now.month < birthDate!.month || (now.month == birthDate!.month && now.day < birthDate!.day)
            ? 1
            : 0);
  }

  String get avatarUrl => avatarPath ?? _defaultAvatarPath;

  @override
  UserEntity copyWith({
    String? id,
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
      UserEntity(
        id: id ?? this.id,
        userId: id ?? userId,
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

  @override
  List<Object?> get props => [
        ...super.props,
        userName,
        password,
        firstName,
        lastName,
        birthDate,
        emailAddress,
        avatarPath,
      ];

  // ========================
  // Private Helpers
  // ========================

  static String get _defaultAvatarPath => 'assets/images/default_avatar.png';
}
