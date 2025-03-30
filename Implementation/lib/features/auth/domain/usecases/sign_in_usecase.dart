import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user_entity.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class SignInUsecase extends UseCaseWithParams<AuthenticationRepository,
    UserEntity, UserSignInParams> {
  SignInUsecase(super.repository);

  @override
  EResultFuture<UserEntity> call(UserSignInParams params) async =>
      repository.signIn(params);
}
