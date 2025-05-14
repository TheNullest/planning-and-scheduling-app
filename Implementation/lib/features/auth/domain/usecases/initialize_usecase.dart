import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/auth/domain/repositories/authentication_repository.dart';

class AuthInitializeUsecase extends UsecaseWithoutParams<AuthenticationRepository, UserEntity?> {
  AuthInitializeUsecase(super.repository);

  @override
  EResultFuture<UserEntity?> call() async {
    try {
      return repository.initialize();
    } on Exception catch (e, stackTrace) {
      return failureTypeDetectorLeft<UserEntity?>(e: e, stackTrace: stackTrace);
    }
  }
}
