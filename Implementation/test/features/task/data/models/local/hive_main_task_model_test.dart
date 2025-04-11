import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';

void main() {
  final entity = MainTaskEntity.empty();
  final testModel = MainTaskHiveModel.fromEntity(entity);
  test('[hiveMainTaskModel] must be a subclass of [MainTaskEntity] ', () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<MainTaskEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveMainTaskModel', () {
    test(
        '[hiveMainTaskModel.toEntity] must return a [MainTaskEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveMainTaskModel.fromEntity] must return a [MainTaskHiveModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = MainTaskHiveModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveMainTaskModel.copyWith] must return a customed [RemoteUserModel]with the right data',
        () {
      // Arrange

      // Act
      final actual = testModel.copyWith(description: 'Something');

      // Assert
      expect(actual.description, equals('Something'));
      expect(actual, isNot(testModel));
    });
  });
}
