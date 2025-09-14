import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/task_planner/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/task_planner/domain/useCases/delete_all_selected_task_schedulers_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late DeleteAllSelectedTaskPlanrsUseCase useCase;
  late TaskPlanrRepository repository;
  setUp(() {
    repository = MockTaskPlanrRepo();
    useCase = DeleteAllSelectedTaskPlanrsUseCase(repository);
  });

  test(
      '[taskPlanr.deleteAllSelectedUseCase] must call the [TaskPlanrRepository.deleteAllSelected] and delete the entity then return the Right value',
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
      '[taskPlanr.deleteAllSelectedUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteAllSelectedUseCase fails',
      () async {
    // Arrange
    when(() => repository.deleteAllSelected([]))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final actual = await useCase([]);

    // Assert
    expect(actual.isLeft(), true);
    expect(actual, equals(const Left(HiveFailure('Error'))));
    verify(
      () => repository.deleteAllSelected([]),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });
}
