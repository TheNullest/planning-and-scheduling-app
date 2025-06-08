import 'package:zamaan/presentation_shared/models/form_controller/user_upsert_form_controller.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class UserVM extends BaseViewModel<UserUpsertFormController> {
  UserVM({
    required this.userName,
    required this.password,
    required this.email,
    this.firstName,
    this.lastName,
    this.birthDate,
  }) : super(vmFormController: UserUpsertFormController(userId: ''));

  final String userName;
  final String password;
  final String email;
  final String? firstName;
  final String? lastName;
  final DateTime? birthDate;

  @override
  bool get isValid => throw UnimplementedError();

  @override
  void clear() {
    // TODO: implement clear
  }
}
