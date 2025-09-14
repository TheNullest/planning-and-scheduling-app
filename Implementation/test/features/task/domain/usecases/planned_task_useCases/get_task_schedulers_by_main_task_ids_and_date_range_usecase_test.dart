import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/shell/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task_planner/get_task_schedulers_by_task_ids_and_date_range_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late GetTaskPlanrByTaskIdsAndDateRangeUseCase useCase;
  late TaskPlanrRepository repository;
  setUp(() {
    repository = MockTaskPlanrRepo();
    useCase = GetTaskPlanrByTaskIdsAndDateRangeUseCase(repository);
  });

  final startAt = DateTime.now();
  final endAt = DateTime(2024, 10);
  final params = GetByTaskIdsAndDateRangeParams(
    mainTaskIds: ['1'],
    startAt: startAt,
    endAt: endAt,
  );
  test(
      '[plannedTime.GetPlannedTimeByTaskIdsAndDateRangeUseCase] must call the [PlannedTimeRepository.getPlannedTimeByTaskIdsAndDateRange] and return [List<PlannedTimeEntity>]',
      () async {
    //Arrange
    when(() => repository.getTaskPlanrsByMainTaskIdsAndDateRange(params))
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<TaskPlanrEntity>>([])));
    verify(() => repository.getTaskPlanrsByMainTaskIdsAndDateRange(params))
        .called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[plannedTime.GetPlannedTimeByTaskIdsAndDateRangeUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when GetPlannedTimeByTaskIdsAndDateRangeUseCase fails',
      () async {
    //Arrange
    when(() => repository.getTaskPlanrsByMainTaskIdsAndDateRange(params))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getTaskPlanrsByMainTaskIdsAndDateRange(params))
        .called(1);
    verifyNoMoreInteractions(repository);
  });
}
