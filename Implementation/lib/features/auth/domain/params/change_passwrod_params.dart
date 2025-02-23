import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';

class ChangePasswordParams extends UserSignInParams {
  ChangePasswordParams({
    required super.email,
    required super.password,
    required this.newPassword,
  });
  final String newPassword;
}
