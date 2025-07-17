import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/repositories/category_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/fetch_all_categories_use_case.dart';

import '_category_repository.mock.dart';

void main() {
  late FetchAllCategoriesUseCase useCase;
  late CategoryRepository repository;
  setUp(() {
    repository = MockCategoryRepo();
    useCase = FetchAllCategoriesUseCase(repository);
  });

  test(
      '[category.getAllUseCase] must call the [CategoryRepository.getEntities] and return [List<CategoryEntity>]',
      () async {
    //Arrange
    when(() => repository.getEntities()).thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase();

    // Assert
    expect(result.isRight(), true);
    expect(result, equals(const Right<dynamic, List<CategoryEntity>>([])));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });

  test(
      '[category.getAllUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when getAllUseCase fails',
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
