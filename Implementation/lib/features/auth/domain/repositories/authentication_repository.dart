import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';

abstract class AuthenticationRepository {
  EResultFuture<UserEntity> getCurrentUser();
  EResultFutureVoid initialize();
  EResultFuture<UserEntity> signUp(UserEntity user);
  EResultFuture<UserEntity> signIn(UserSignInParams params);
  EResultFuture<UserEntity> update(UserEntity user);
  EResultFutureVoid changePassword(ChangePasswordParams params);
  EResultFutureVoid resetPassword(String email);
  EResultFuture<bool> deleteUserAccount(UserSignInParams params);
  EResultFutureVoid signOut();
}
