import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class SignUpUsecase extends UsecaseWithParams<AuthenticationRepository, UserEntity, UserEntity> {
  SignUpUsecase(super.repository);

  @override
  EResultFuture<UserEntity> call(UserEntity params) async => repository.signUp(params);
}
