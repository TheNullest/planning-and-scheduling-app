import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/create_goal_use_case.dart';

import '_goal_repository.mock.dart';

void main() {
  late CreateGoalUseCase useCase;
  late GoalRepository mockedRepository;

  setUp(() {
    mockedRepository = MockGoalRepo();
    useCase = CreateGoalUseCase(mockedRepository);
  });

  final param = GoalEntity.empty();
  test('[goal.createUseCase] must call the [GoalRepository.createEntity]',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Right(null));
    final actualResult = await useCase(param);

    // Assert
    expect(actualResult.isRight(), true);
    expect(actualResult, equals(const Right<Failure, void>(null)));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });

  test(
      '[goal.createUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when createUseCase fails',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));
    final actualResult = await useCase(param);

    // Assert
    expect(actualResult.isLeft(), true);
    expect(actualResult, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });
}
