import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';

void main() {
  final entity = SubTaskEntity.empty();
  final testModel = SubTaskHiveModel.fromEntity(entity);
  test('[hiveSubTaskModel] must be a subclass of [SubTaskEntity] ', () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<SubTaskEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveSubTaskModel', () {
    test(
        '[hiveSubTaskModel.toEntity] must return a [SubTaskEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveSubTaskModel.fromEntity] must return a [SubTaskHiveModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = SubTaskHiveModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveSubTaskModel.copyWith] must return a customed [RemoteUserModel]with the right data',
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
