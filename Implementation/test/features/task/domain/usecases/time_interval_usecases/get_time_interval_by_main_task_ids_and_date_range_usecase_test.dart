import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/shell/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/shell/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/features/shell/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/shell/domain/useCases/time_interval_useCases/get_time_inteval_by_main_task_ids_and_date_range_use_case.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late GetTimeIntevalByMainTaskIdsAndDateRangeUseCase useCase;
  late TimeIntervalRepository repository;
  setUp(() {
    repository = MockTimeIntervalRepo();
    useCase = GetTimeIntevalByMainTaskIdsAndDateRangeUseCase(repository);
  });

  final startAt = DateTime.now();
  final endAt = DateTime(2024, 10);
  final params = GetByTaskIdsAndDateRangeParams(
    mainTaskIds: ['1'],
    startAt: startAt,
    endAt: endAt,
  );
  test(
      '[timeInterval.GetTimeIntevalByMainTaskIdsAndDateRangeUseCase] must call the [TimeIntervalRepository.getTimeIntervalByMainTaskIdAndDateRange] and return [List<TimeIntervalEntity>]',
      () async {
    //Arrange
    when(() => repository.getTimeIntervalByMainTaskIdAndDateRange(params))
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(const Right<dynamic, List<TimeIntervalEntity>>([])));
    verify(() => repository.getTimeIntervalByMainTaskIdAndDateRange(params))
        .called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[timeInterval.GetTimeIntevalByMainTaskIdsAndDateRangeUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when GetTimeIntevalByMainTaskIdsAndDateRangeUseCase fails',
      () async {
    //Arrange
    when(() => repository.getTimeIntervalByMainTaskIdAndDateRange(params))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getTimeIntervalByMainTaskIdAndDateRange(params))
        .called(1);
    verifyNoMoreInteractions(repository);
  });
}
