import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/shell/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/shell/domain/useCases/time_interval_useCases/delete_all_selected_time_intervals_use_case.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late DeleteAllSelectedTimeIntervalsUseCase useCase;
  late TimeIntervalRepository repository;
  setUp(() {
    repository = MockTimeIntervalRepo();
    useCase = DeleteAllSelectedTimeIntervalsUseCase(repository);
  });

  test(
      '[timeInterval.deleteAllSelectedUseCase] must call the [TimeIntervalRepository.deleteAllSelected] and delete the entity then return the Right value',
      () async {
    // Arrange
    when(() => repository.deleteAllSelected([]))
        .thenAnswer((_) async => const Right(null));

    // Act
    final actual = await useCase([]);

    // Assert
    expect(actual.isRight(), true);
    expect(actual, equals(const Right<Failure, void>(null)));
    verify(
      () => repository.deleteAllSelected([]),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[timeInterval.deleteAllSelectedUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteAllSelectedUseCase fails',
      () async {
    // Arrange
    when(() => repository.deleteAllSelected([]))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase([]);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(
      () => repository.deleteAllSelected([]),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });
}
