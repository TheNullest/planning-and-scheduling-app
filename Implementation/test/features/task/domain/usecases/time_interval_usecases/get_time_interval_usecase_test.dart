import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/shell/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/shell/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/shell/domain/useCases/time_interval_useCases/get_time_interval_use_case.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late TimeIntervalRepository mockedRepo;
  late GetTimeIntervalUseCase useCase;
  late TimeIntervalEntity param;

  setUp(() {
    mockedRepo = MockTimeIntervalRepo();
    useCase = GetTimeIntervalUseCase(mockedRepo);
    param = TimeIntervalEntity.empty();
  });

  test(
      '[timeInterval.getUseCase] must call the [TimeIntervalRepository.getEntity] and return [TimeIntervalEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, TimeIntervalEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[timeInterval.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
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
