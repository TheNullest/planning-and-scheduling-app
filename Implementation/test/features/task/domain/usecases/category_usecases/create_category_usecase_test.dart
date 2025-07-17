import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/create_category_use_case.dart';

import '_category_repository.mock.dart';

void main() {
  late CreateCategoryUseCase useCase;
  late CategoryRepository mockedRepository;

  setUp(() {
    mockedRepository = MockCategoryRepo();
    useCase = CreateCategoryUseCase(mockedRepository);
  });

  final param = CategoryEntity.empty();
  test('[category.createUseCase] must call the [CategoryRepo.createEntity]',
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
      '[category.createUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when createUseCase fails',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));
    final actualResult = await useCase(param);

    // Assert
    expect(actualResult.isLeft(), true);
    expect(actualResult, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });
}
