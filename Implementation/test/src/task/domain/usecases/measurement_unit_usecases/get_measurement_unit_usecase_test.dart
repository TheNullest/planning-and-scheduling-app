import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/features/task/domain/entities/measurement_unit_entity.dart';
import 'package:zamaan/features/task/domain/repositories/measurement_unit_repository.dart';
import 'package:zamaan/features/task/domain/usecases/measurement_unit_usecases/get_measurement_unit_usecase.dart';

import '_measurement_unit_repository.mock.dart';

void main() {
  late MeasurementUnitRepository mockedRepo;
  late GetMeasurementUnitUsecase usecase;
  late MeasurementUnitEntity param;

  setUp(() {
    mockedRepo = MockMeasurementUnitRepo();
    usecase = GetMeasurementUnitUsecase(mockedRepo);
    param = MeasurementUnitEntity.empty();
  });

  test(
      '[measurementUnit.getUsecase] must call the [MeasurementUnitRepository.getEntity] and return [MeasurementUnitEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await usecase(param.id);
    expect(result, equals(Right<Failure, MeasurementUnitEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });
}