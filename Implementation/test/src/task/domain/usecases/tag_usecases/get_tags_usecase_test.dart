import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/features/task/domain/entities/tag_entity.dart';
import 'package:zamaan/features/task/domain/repositories/tag_repository.dart';
import 'package:zamaan/features/task/domain/usecases/tag_usecases/get_tags_usecase.dart';

import '_tag_repository.mock.dart';

void main() {
  late GetTagsUsecase useCase;
  late TagRepository repository;
  setUp(() {
    repository = MockTagRepo();
    useCase = GetTagsUsecase(repository);
  });

  test(
      '[tag.getAllUsecase] must call the [TagRepository.getEntities] and return [List<TagEntity>]',
      () async {
    //Arrange
    when(() => repository.getEntities())
        .thenAnswer((_) async => const Right([]));

    // Act
    final result = await useCase();

    // Assert
    expect(result, equals(const Right<dynamic, List<TagEntity>>([])));
    verify(() => repository.getEntities()).called(1);
    verifyNoMoreInteractions(repository);
  });
}