import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/measurement_unit/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/measurement_unit/domain/useCases/delete_all_selected_measurement_units_use_case.dart';

import '_measurement_unit_repository.mock.dart';

void main() {
  late DeleteAllSelectedMeasurementUnitsUseCase useCase;
  late MeasurementUnitRepository repository;
  setUp(() {
    repository = MockMeasurementUnitRepo();
    useCase = DeleteAllSelectedMeasurementUnitsUseCase(repository);
  });

  test(
      '[measurementUnit.deleteAllSelectedUseCase] must call the [MeasurementUnitRepository.deleteAllSelected] and delete the entity then return the Right value',
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
      '[measurementUnit.deleteAllSelectedUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteAllSelectedUseCase fails',
      () async {
    // Arrange
    when(() => repository.deleteAllSelected([]))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final actual = await useCase([]);

    // Assert
    expect(actual.isLeft(), true);
    expect(actual, equals(const Left(HiveFailure('Error'))));
    verify(
      () => repository.deleteAllSelected([]),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });
}
