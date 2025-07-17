import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/shell/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/shell/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/shell/domain/useCases/time_interval_useCases/create_time_interval_use_case.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late CreateTimeIntervalUseCase useCase;
  late TimeIntervalRepository mockedRepository;

  setUp(() {
    mockedRepository = MockTimeIntervalRepo();
    useCase = CreateTimeIntervalUseCase(mockedRepository);
  });

  final param = TimeIntervalEntity.empty();
  test(
      '[timeInterval.createUseCase] must call the [TimeIntervalRepository.createEntity]',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Right(null));
    final actualResult = await useCase(param);

    // Assert
    expect(actualResult.isRight(), true);
    expect(actualResult, equals(const Right<Failure, void>(null)));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });

  test(
      '[timeInterval.createUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when createUseCase fails',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));
    final result = await useCase(param);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });
}
