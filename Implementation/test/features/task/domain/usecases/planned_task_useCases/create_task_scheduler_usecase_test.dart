import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task_planner/create_task_scheduler_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late CreateTaskPlanrUseCase useCase;
  late TaskPlanrRepository mockedRepository;

  setUp(() {
    mockedRepository = MockTaskPlanrRepo();
    useCase = CreateTaskPlanrUseCase(mockedRepository);
  });

  final param = TaskPlanrEntity.empty();
  test(
      '[plannedTime.createUseCase] must call the [PlannedTimeRepository.createEntity]',
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
      '[plannedTime.createUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when createUseCase fails',
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
