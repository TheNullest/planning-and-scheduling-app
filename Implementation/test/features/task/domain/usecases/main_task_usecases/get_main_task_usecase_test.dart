import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/task/unconfirms/get_task_by_id_use_case.dart';

import '_main_task_repository.mock.dart';

void main() {
  late MainTaskRepository mockedRepo;
  late GetMainTaskUseCase useCase;
  late MainTaskEntity param;

  setUp(() {
    mockedRepo = MockMainTaskRepo();
    useCase = GetMainTaskUseCase(mockedRepo);
    param = MainTaskEntity.empty();
  });

  test(
      '[mainTask.getUseCase] must call the [MainTaskRepository.getEntity] and return [MainTaskEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id)).thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, MainTaskEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[mainTask.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
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
