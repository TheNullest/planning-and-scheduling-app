import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class ChangePasswordUsecase
    extends UsecaseWithParams<AuthenticationRepository, void, ChangePasswordParams> {
  ChangePasswordUsecase(super.repository);

  @override
  EResultFutureVoid call(ChangePasswordParams params) async => repository.changePassword(params);
}
