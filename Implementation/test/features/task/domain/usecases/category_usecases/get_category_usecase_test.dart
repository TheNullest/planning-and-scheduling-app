import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/unuseds/get_category_use_case.dart';

import '_category_repository.mock.dart';

void main() {
  late CategoryRepository mockedRepo;
  late GetCategoryUseCase useCase;
  late CategoryEntity param;

  setUp(() {
    mockedRepo = MockCategoryRepo();
    useCase = GetCategoryUseCase(mockedRepo);
    param = CategoryEntity.empty();
  });

  test(
      '[category.getUseCase] must call the [CategoryRepository.getEntity] and return [CategoryEntity]',
      () async {
    //Arrange
    when(() => mockedRepo.getEntity(id: param.id))
        .thenAnswer((_) async => Right(param));

    // Act
    final result = await useCase(param.id);

    // Assert
    expect(result.isRight(), true);
    expect(result, equals(Right<Failure, CategoryEntity>(param)));
    verify(() => mockedRepo.getEntity(id: param.id)).called(1);
    verifyNoMoreInteractions(mockedRepo);
  });

  test(
      '[category.getUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getUseCase fails',
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
