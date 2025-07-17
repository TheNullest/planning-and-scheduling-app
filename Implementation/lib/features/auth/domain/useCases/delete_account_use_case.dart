import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class DeleteAccountUseCase
    extends UseCaseWithParams<AuthenticationRepository, bool, UserSignInParams> {
  DeleteAccountUseCase(super.repository);

  @override
  EResultFuture<bool> call(UserSignInParams params) async => repository.deleteUserAccount(params);
}
