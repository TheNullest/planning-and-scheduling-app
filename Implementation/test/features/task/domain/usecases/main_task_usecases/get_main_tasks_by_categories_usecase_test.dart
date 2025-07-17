import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/task/get_tasks_by_categories_use_case.dart';

import '_main_task_repository.mock.dart';

void main() {
  late GetMainTasksByCategoriesUseCase useCase;
  late MainTaskRepository repository;
  setUp(() {
    repository = MockMainTaskRepo();
    useCase = GetMainTasksByCategoriesUseCase(repository);
  });

  test(
      '[mainTask.getMainTasksByCategoriesUseCase] must call the [MainTaskRepository.getMainTasksByCategories] and return [List<MainTaskEntity>]',
      () async {
    //Arrange
    when(() => repository.getMainTasksByCategories([])).thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase([]);

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<MainTaskEntity>>([])));
    verify(() => repository.getMainTasksByCategories([])).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[mainTask.getMainTasksByCategoriesUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getMainTasksByCategoriesUseCase fails',
      () async {
    //Arrange
    when(() => repository.getMainTasksByCategories([]))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase([]);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getMainTasksByCategories([])).called(1);
    verifyNoMoreInteractions(repository);
  });
}
