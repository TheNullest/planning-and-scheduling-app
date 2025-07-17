import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task_scheduler/get_task_scheduler_use_case.dart';

import '_task_scheduler_repository.mock.dart';

void main() {
  late TaskSchedulerRepository mockedRepo;
  late GetTaskSchedulerUseCase useCase;
  late TaskSchedulerEntity param;

  setUp(() {
    mockedRepo = MockTaskSchedulerRepo();
    useCase = GetTaskSchedulerUseCase(mockedRepo);
    param = TaskSchedulerEntity.empty();
  });

  test(
      '[scheduledTime.getUseCase] must call the [ScheduledTimeRepository.getEntity] and return [ScheduledTimeEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, TaskSchedulerEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[scheduledTime.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
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
