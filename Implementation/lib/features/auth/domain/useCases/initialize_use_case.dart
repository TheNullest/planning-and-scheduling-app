import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class AuthInitializeUseCase extends UseCaseWithoutParams<AuthenticationRepository, UserEntity?> {
  AuthInitializeUseCase(super.repository);

  @override
  EResultFuture<UserEntity?> call() async {
    try {
      return repository.initialize();
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity?>(e: e, stackTrace: stackTrace);
    }
  }
}
