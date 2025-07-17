import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class SignOutUseCase extends UseCaseWithoutParams<AuthenticationRepository, void> {
  SignOutUseCase(super.repository);

  @override
  EResultFutureVoid call() async => repository.signOut();
}
