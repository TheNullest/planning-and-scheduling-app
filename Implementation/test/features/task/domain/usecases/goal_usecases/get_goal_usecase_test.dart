import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/goal/unused/get_goal_use_case.dart';

import '_goal_repository.mock.dart';

void main() {
  late GoalRepository mockedRepo;
  late GetGoalUseCase useCase;
  late GoalEntity param;

  setUp(() {
    mockedRepo = MockGoalRepo();
    useCase = GetGoalUseCase(mockedRepo);
    param = GoalEntity.empty();
  });

  test(
      '[goal.getUseCase] must call the [GoalRepository.getEntity] and return [GoalEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    //Assert
    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, GoalEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[goal.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase(param.id);

    // Assert
    expect(result.isLeft(), true);

    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });
}
