import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class SignInUseCase
    extends UseCaseWithParams<AuthenticationRepository, UserEntity, UserSignInParams> {
  SignInUseCase(super.repository);

  @override
  EResultFuture<UserEntity> call(UserSignInParams params) async => repository.signIn(params);
}
