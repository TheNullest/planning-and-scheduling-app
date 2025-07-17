import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/custom_measurement_unit.dart';
import 'package:zamaan/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/measurement_unit/get_measurement_unit_use_case.dart';

import '_measurement_unit_repository.mock.dart';

void main() {
  late MeasurementUnitRepository mockedRepo;
  late GetMeasurementUnitUseCase useCase;
  late CustomeMeasurementUnitEntity param;

  setUp(() {
    mockedRepo = MockMeasurementUnitRepo();
    useCase = GetMeasurementUnitUseCase(mockedRepo);
    param = CustomeMeasurementUnitEntity.empty();
  });

  test(
      '[measurementUnit.getUseCase] must call the [MeasurementUnitRepository.getEntity] and return [MeasurementUnitEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id)).thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    // Assert
    expect(result.isRight(), true);

    expect(result, equals(Right<Failure, CustomeMeasurementUnitEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[measurementUnit.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase(param.id);
    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });
}
