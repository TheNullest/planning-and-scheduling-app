import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/features/task/domain/repositories/tag_repository.dart';
import 'package:zamaan/features/task/domain/usecases/tag_usecases/delete_all_selected_tags_usecase.dart';

import '_tag_repository.mock.dart';

void main() {
  late DeleteAllSelectedTagsUsecase useCase;
  late TagRepository repository;
  setUp(() {
    repository = MockTagRepo();
    useCase = DeleteAllSelectedTagsUsecase(repository);
  });

  test(
      '[tag.deleteAllSelectedUsecase] must call the [TagRepository.deleteAllSelected] and delete the entity then return the Right value',
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
      '[tag.deleteAllSelectedUsecase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when deleteAllSelectedUsecase fails',
      () async {
    // Arrange
    when(() => repository.deleteAllSelected([]))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));

    // Act
    final result = await useCase([]);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(
      () => repository.deleteAllSelected([]),
    ).called(1);
    verifyNoMoreInteractions(repository);
  });
}
