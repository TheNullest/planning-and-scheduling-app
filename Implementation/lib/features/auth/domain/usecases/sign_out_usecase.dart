import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class SignOutUsecase extends UsecaseWithoutParams<AuthenticationRepository, void> {
  SignOutUsecase(super.repository);

  @override
  EResultFutureVoid call() async => repository.signOut();
}
