import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class UserVM extends BaseViewModel {
  UserVM({
    required this.userName,
    required this.password,
    required this.email,
    this.firstName,
    this.lastName,
    this.birthDate,
  });

  final String userName;
  final String password;
  final String email;
  final String? firstName;
  final String? lastName;
  final DateTime? birthDate;

  @override
  bool get isValid => throw UnimplementedError();
}
