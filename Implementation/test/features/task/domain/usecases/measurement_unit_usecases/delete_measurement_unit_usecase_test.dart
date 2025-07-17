import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/measurement_unit/delete_measurement_unit_use_case.dart';

import '_measurement_unit_repository.mock.dart';

void main() {
  late DeleteMeasurementUnitUseCase useCase;
  late MeasurementUnitRepository repository;
  final params = GoalEntity.empty().id;
  setUp(() {
    repository = MockMeasurementUnitRepo();
    useCase = DeleteMeasurementUnitUseCase(repository);
  });

  test(
      '[measurementUnit.deleteUseCase] must call the [MeasurementUnitRepository.deleteEntity] and delete the entity then return the Right value',
      () async {
// Arrange
    when(() => repository.deleteEntity(id: params))
        .thenAnswer((_) async => const Right(null));

// Act
    final actual = await useCase(params);

// Assert
    expect(actual.isRight(), true);

    expect(actual, equals(const Right<Failure, void>(null)));
    verify(
      () => repository.deleteEntity(id: params),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[measurementUnit.deleteUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteUseCase fails',
      () async {
// Arrange
    when(() => repository.deleteEntity(id: params))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

// Act
    final actual = await useCase(params);

// Assert
    expect(actual.isLeft(), true);
    expect(actual, equals(const Left(HiveFailure('Error'))));
    verify(
      () => repository.deleteEntity(id: params),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });
}
