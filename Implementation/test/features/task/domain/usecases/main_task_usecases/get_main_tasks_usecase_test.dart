import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/get_batch_tasks_use_case.dart';

import '_main_task_repository.mock.dart';

void main() {
  late GetMainTasksUseCase useCase;
  late MainTaskRepository repository;
  setUp(() {
    repository = MockMainTaskRepo();
    useCase = GetMainTasksUseCase(repository);
  });

  test(
      '[mainTask.getAllUseCase] must call the [MainTaskRepository.getEntities] and return [List<MainTaskEntity>]',
      () async {
    //Arrange
    when(() => repository.getEntities()).thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase();

    // Assert
    expect(result, equals(const Right<dynamic, List<MainTaskEntity>>([])));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[mainTask.getAllUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getAllUseCase fails',
      () async {
    //Arrange
    when(() => repository.getEntities()).thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase();

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
