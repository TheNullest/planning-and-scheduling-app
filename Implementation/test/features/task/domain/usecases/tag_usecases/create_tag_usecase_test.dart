import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/create_tag_use_case.dart';

import '_tag_repository.mock.dart';

void main() {
  late CreateTagUseCase useCase;
  late TagRepository mockedRepository;

  setUp(() {
    mockedRepository = MockTagRepo();
    useCase = CreateTagUseCase(mockedRepository);
  });

  final param = TagEntity.empty();
  test('[tag.createUseCase] must call the [TagRepository.createEntity]',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Right(null));
    final result = await useCase(param);

    // Assert
    expect(result.isRight(), true);
    expect(result, equals(const Right<Failure, void>(null)));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });

  test(
      '[tag.createUseCase.failureTest] must return failure with [Left(HiveFailure("Error"))] data when createUseCase fails',
      () async {
    // Arrange
    // Act
    when(() => mockedRepository.createEntity(newEntity: param))
        .thenAnswer((_) async => const Left(HiveFailure('Error')));
    final result = await useCase(param);

    // Assert
    expect(result.isLeft(), true);
    expect(result, equals(const Left(HiveFailure('Error'))));
    verify(() => mockedRepository.createEntity(newEntity: param)).called(1);
    verifyNoMoreInteractions(mockedRepository);
  });
}
