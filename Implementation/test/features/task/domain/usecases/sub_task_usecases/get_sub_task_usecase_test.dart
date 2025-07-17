import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/sub_task/unconfirms/get_sub_task_use_case.dart';

import '_sub_task_repository.mock.dart';

void main() {
  late SubTaskRepository mockedRepo;
  late GetSubTaskUseCase useCase;
  late SubTaskEntity param;

  setUp(() {
    mockedRepo = MockSubTaskRepo();
    useCase = GetSubTaskUseCase(mockedRepo);
    param = SubTaskEntity.empty();
  });

  test(
      '[subTask.getUseCase] must call the [SubTaskRepository.getEntity] and return [SubTaskEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, SubTaskEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[subTask.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
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
