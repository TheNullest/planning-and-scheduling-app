import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class ResetPasswordUsecase extends UsecaseWithParams<AuthenticationRepository, void, String> {
  ResetPasswordUsecase(super.repository);

  @override
  EResultFutureVoid call(String params) async => repository.resetPassword(params);
}
