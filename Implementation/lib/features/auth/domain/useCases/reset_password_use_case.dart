import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class ResetPasswordUseCase extends UseCaseWithParams<AuthenticationRepository, void, String> {
  ResetPasswordUseCase(super.repository);

  @override
  EResultFutureVoid call(String params) async => repository.resetPassword(params);
}
