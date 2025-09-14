import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task_planner/get_task_scheduler_by_task_id_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late GetTaskPlanrByTaskIdUseCase useCase;
  late TaskPlanrRepository repository;
  setUp(() {
    repository = MockTaskPlanrRepo();
    useCase = GetTaskPlanrByTaskIdUseCase(repository);
  });

  test(
      '[plannedTime.GetPlannedTimeByTaskIdUseCase] must call the [PlannedTimeRepository.getPlannedTimeByTaskId] and return [List<PlannedTimeEntity>]',
      () async {
    //Arrange
    when(() => repository.getTaskPlanrsByMainTaskId('1'))
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<TaskPlanrEntity>>([])));
    verify(() => repository.getTaskPlanrsByMainTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[plannedTime.GetPlannedTimeByTaskIdUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when GetPlannedTimeByTaskIdUseCase fails',
      () async {
    //Arrange
    when(() => repository.getTaskPlanrsByMainTaskId('1'))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getTaskPlanrsByMainTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });
}
