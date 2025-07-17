import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/auth/domain/useCases/delete_all_selected_users_use_case.dart';

import '_authentication_repository.mock.dart';

void main() {
  late DeleteAllSelectedUsersUseCase useCase;
  late AuthenticationRepository repository;
  setUp(() {
    repository = MockAuthRepo();
    useCase = DeleteAllSelectedUsersUseCase(repository);
  });

  group('user.deleteAllSelectedUseCase', () {
    test(
        '[user.deleteAllSelectedUseCase] must call the [AuthRepo.deleteAllSelected] and delete the entity then return the Right value',
        () async {
      // Arrange
      when(() => repository.deleteAllSelected([]))
          .thenAnswer((_) async => const Right(null));

      // Act
      final actual = await useCase([]);

      // Assert
      expect(actual.isRight(), true);
      expect(actual, equals(const Right<Failure, void>(null)));
      verify(
        () => repository.deleteAllSelected([]),
      ).called(1);
      verifyNoMoreInteractions(repository);
    });

    test(
        '[user.deleteAllSelectedUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteAllSelectedUseCase fails',
        () async {
      // Arrange
      when(() => repository.deleteAllSelected([]))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      // Act
      final actual = await useCase([]);

      // Assert
      expect(actual.isLeft(), true);
      expect(actual, equals(const Left<Failure, void>(HiveFailure('Error'))));

      verify(
        () => repository.deleteAllSelected([]),
      ).called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
