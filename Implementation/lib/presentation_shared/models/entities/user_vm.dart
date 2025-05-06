import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class UserVM extends BaseViewModel {
  UserVM({
    required this.userName,
    required this.password,
    required this.email,
    this.firstName,
    this.lastName,
    this.birthDate,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  final String userName;
  final String password;
  final String email;
  final String? firstName;
  final String? lastName;
  final DateTime? birthDate;

  @override
  UserVM copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? birthDate,
    String? userId,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
    String? email,
  }) =>
      UserVM(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        birthDate: birthDate ?? this.birthDate,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
      );
}
