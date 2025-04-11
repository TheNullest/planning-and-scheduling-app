import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

class UserEntity extends BaseEntityAbstraction {
  UserEntity({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.password,
    super.id,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.description, // as user bio in here
    this.birthDate,
    this.avatarPath,
  });

// For the purpose of testing
  UserEntity.forTest()
      : this(
          userName: '_empty.userName',
          firstName: '_empty.firstName',
          lastName: '_empty.lastName',
          description: '_empty.description',
          emailAddress: '_empty.emailAddress',
          password: '_empty.password',
          avatarPath: '_empty.avatarPath',
          birthDate: DateTime(1989, 12, 23, 16, 53, 37, 532, 444),
        );

  @HiveField(11)
  final String userName;

  @HiveField(12)
  final String password;

  @HiveField(13)
  final String firstName;

  @HiveField(14)
  final String lastName;

  @HiveField(15)
  final String emailAddress;

  @HiveField(16)
  final DateTime? birthDate;

  @HiveField(17)
  final String? avatarPath;

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

  UserEntity toEntity() => UserEntity(
        id: id,
        userName: userName,
        description: description,
        avatarPath: avatarPath,
        birthDate: birthDate,
        password: password,
        firstName: firstName,
        lastName: lastName,
        createdAt: createdAt,
        updatedAt: updatedAt,
        emailAddress: emailAddress,
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
}
