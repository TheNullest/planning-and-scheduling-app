import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class ChangePasswordUseCase
    extends UseCaseWithParams<AuthenticationRepository, void, ChangePasswordParams> {
  ChangePasswordUseCase(super.repository);

  @override
  EResultFutureVoid call(ChangePasswordParams params) async => repository.changePassword(params);
}
