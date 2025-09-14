import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task_planner/get_task_scheduler_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late TaskPlanrRepository mockedRepo;
  late GetTaskPlanrUseCase useCase;
  late TaskPlanrEntity param;

  setUp(() {
    mockedRepo = MockTaskPlanrRepo();
    useCase = GetTaskPlanrUseCase(mockedRepo);
    param = TaskPlanrEntity.empty();
  });

  test(
      '[plannedTime.getUseCase] must call the [PlannedTimeRepository.getEntity] and return [PlannedTimeEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, TaskPlanrEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[plannedTime.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase(param.id);
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });
}
