import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class UserVM extends BaseViewModel<UserEntity> {
  UserVM({
    required this.userName,
    required this.password,
    required this.email,
    this.firstName,
    this.lastName,
    this.birthDate,
  }) : super(userId: '', viewModelTitle: 'User');

  final String userName;
  final String password;
  final String email;
  final String? firstName;
  final String? lastName;
  final DateTime? birthDate;

  @override
  bool get isValid => throw UnimplementedError();

  @override
  // TODO: implement toEntity
  UserEntity get toEntity => throw UnimplementedError();

  @override
  void initialize([UserEntity? entity]) {
    // TODO: implement toEntity
    super.initialize(entity);
  }

  @override
  void resetValues() {
    // TODO: implement toEntity
    super.resetValues();
  }
}
