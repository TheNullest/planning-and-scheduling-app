import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/features/task/domain/entities/time_interval_entity.dart';
import 'package:zamaan/features/task/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/features/task/domain/usecases/time_interval_usecases/get_time_intervals_usecase.dart';

import '_time_interval_repository.mock.dart';

void main() {
  late GetTimeIntervalsUsecase useCase;
  late TimeIntervalRepository repository;
  setUp(() {
    repository = MockTimeIntervalRepo();
    useCase = GetTimeIntervalsUsecase(repository);
  });

  test(
      '[timeInterval.getAllUsecase] must call the [TagRepository.getEntities] and return [List<TimeIntervalEntity>]',
      () async {
    //Arrange
    when(() => repository.getEntities())
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase();

    // Assert
    expect(result, equals(const Right<dynamic, List<TimeIntervalEntity>>([])));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });
}