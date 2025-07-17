import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/shell/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/shell/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/shell/domain/useCases/time_interval_useCases/get_time_interval_by_sub_task_id_use_case.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late GetTimeIntervalBySubTaskIdUseCase useCase;
  late TimeIntervalRepository repository;
  setUp(() {
    repository = MockTimeIntervalRepo();
    useCase = GetTimeIntervalBySubTaskIdUseCase(repository);
  });

  test(
      '[timeInterval.GetTimeIntervalBySubTaskIdUseCase] must call the [TimeIntervalRepository.getTimeIntervalBySubTaskId] and return [List<SubTaskEntity>]',
      () async {
    //Arrange
    when(() => repository.getTimeIntervalBySubTaskId('1'))
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<TimeIntervalEntity>>([])));
    verify(() => repository.getTimeIntervalBySubTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[timeInterval.GetTimeIntervalBySubTaskIdUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when GetTimeIntervalBySubTaskIdUseCase fails',
      () async {
    //Arrange
    when(() => repository.getTimeIntervalBySubTaskId('1'))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase('1');

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getTimeIntervalBySubTaskId('1')).called(1);
    verifyNoMoreInteractions(repository);
  });
}
