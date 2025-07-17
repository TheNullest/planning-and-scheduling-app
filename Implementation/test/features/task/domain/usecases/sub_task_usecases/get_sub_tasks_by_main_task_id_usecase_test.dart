import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/features/tasks_management/domain/useCases/sub_task/get_sub_tasks_by_task_id_use_case.dart';

import '_sub_task_repository.mock.dart';

void main() {
  late GetSubTasksByMainTaskIdUseCase useCase;
  late SubTaskRepository repository;
  setUp(() {
    repository = MockSubTaskRepo();
    useCase = GetSubTasksByMainTaskIdUseCase(repository);
  });

  test(
      '[subTask.GetSubTasksByMainTaskIdUseCase] must call the [SubTaskRepository.getSubTasksByMainTaskId] and return [List<SubTaskEntity>]',
      () async {
    //Arrange
    when(() => repository.getSubTasksByMainTaskId('1'))
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<SubTaskEntity>>([])));
    verify(() => repository.getSubTasksByMainTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[subTask.GetSubTasksByMainTaskIdUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when GetSubTasksByMainTaskIdUseCase fails',
      () async {
    //Arrange
    when(() => repository.getSubTasksByMainTaskId('1'))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getSubTasksByMainTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });
}
