import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class CurrentUserUseCase extends UseCaseWithoutParams<AuthenticationRepository, UserEntity> {
  CurrentUserUseCase(super.repository);

  @override
  EResultFuture<UserEntity> call() async => repository.getCurrentUser();
}
