import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/measurement_unit/get_measurement_units_use_case.dart';

import '_measurement_unit_repository.mock.dart';

void main() {
  late GetMeasurementUnitsUseCase useCase;
  late MeasurementUnitRepository repository;
  setUp(() {
    repository = MockMeasurementUnitRepo();
    useCase = GetMeasurementUnitsUseCase(repository);
  });

  test(
      '[measurementUnit.getAllUseCase] must call the [MeasurementUnitRepository.getEntities] and return [List<MeasurementUnitEntity>]',
      () async {
    //Arrange
    when(() => repository.getEntities()).thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase();

    // Assert
    expect(result.isRight(), true);

    expect(
      result,
      equals(const Right<dynamic, List<CustomeMeasurementUnitEntity>>([])),
    );
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[measurementUnit.getAllUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getAllUseCase fails',
      () async {
    //Arrange
    when(() => repository.getEntities()).thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase();

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
