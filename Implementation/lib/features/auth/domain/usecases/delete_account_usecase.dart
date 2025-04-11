import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class DeleteAccountUsecase
    extends UsecaseWithParams<AuthenticationRepository, bool, UserSignInParams> {
  DeleteAccountUsecase(super.repository);

  @override
  EResultFuture<bool> call(UserSignInParams params) async => repository.deleteUserAccount(params);
}
