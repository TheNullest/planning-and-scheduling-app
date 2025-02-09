// ignore_for_file: strict_raw_type

import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/auth/domain/usecases/update_user_usecase.dart';

import '../../../../fixtures/fixture_reader.dart';
import '_authentication_repository.mock.dart';

void main() {
  // Arrange
  late UpdateUserUseCase useCase;
  late AuthenticationRepository repository;
  setUp(() {
    repository = MockAuthRepo();
    useCase = UpdateUserUseCase(repository);
  });

  final UserEntity params = getHiveUserModels()[2];
  // Assert
  test(
      '[user.updateUsecase] must update the [RemoteUserModel] with the right data',
      () async {
    //Arrange
    when(() => repository.updateEntity(entity: params))
        .thenAnswer((_) async => const Right(unit));
    // Act
    final actual = await useCase(params);

    // Assert
    expect(actual.isRight(), true);
    expect(actual, equals(const Right<Failure, void>(unit)));
    verify(() => repository.updateEntity(entity: params)).called(1);

    verifyNoMoreInteractions(repository);
  });

  test(
      '[user.updateUsecase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when updateUsecase fails',
      () async {
    // Arrange
    const failure = HiveFailure('Update failed');
    when(() => repository.updateEntity(entity: params))
        .thenAnswer((_) async => const Left(failure));

    // Act
    final result = await repository.updateEntity(entity: params);

    // Assert
    expect(result, isA<Left>());
    expect(result, equals(const Left<Failure, void>(failure)));

    verify(() => repository.updateEntity(entity: params)).called(1);
  });
}
